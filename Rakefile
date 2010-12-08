# A script to facilitate dotfiles management. This is a reworking of the
# Rakefile at http://github.com/ryanb/dotfiles. Look, no if statements!
# Okay, one if you count the ternary conditional.

require 'rake'
require 'pathname'

desc 'install dotfiles into user home directory'
task :install do
  # Select all non-excluded files from the current directory
  Pathname.glob('*').reject do |f|
    puts "processing #{f}"
    f.basename.to_s =~ /Rakefile|README.*|LICENSE|\..*/
  end.each do |f|
    link_file(f.expand_path, transform_file_name(f))
  end
end

def transform_file_name(original_name)
  Pathname.new(ENV['HOME']).expand_path + ".#{original_name}"
end

# Link target to prospective_symlink. replace_all allows us to implement
# a "replace all conflicting files" feature later, if we want to.
def link_file(target, symlink, replace_all=false)
  puts "linking #{symlink.expand_path} -> #{target.expand_path}"

  # Mode specifies the type of linking we want to do. When there
  # are conflicts:
  # - i indicates "interactively replace"
  # - f indicates "force replace"
  mode = replace_all ? 'f' : 'i'

  # -f and -i will mess up symlinks for directories
  mode = nil if target.directory? 

  system %Q{ln -s -v#{mode} "#{target.expand_path}" "#{symlink.expand_path}"}
end
