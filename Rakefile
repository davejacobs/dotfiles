require 'rake'
require 'pathname'

desc 'install dotfiles into user home directory'
task :install do
  ignored_files = ['Rakefile', 'README', 'LICENSE', '\..*', 'doc']
  skeleton_files = lambda {|x| x.to_s =~ Regexp.new(ignored_files.join '|') }

  link_files = lambda {|f| link_file(f.expand_path, transform_file_name(f)) }
  Pathname.glob('*').reject(&skeleton_files).each(&link_files)
end

task :plugins do
  homebrew_is_installed = !`which brew`.empty?
  
  if homebrew_is_installed
    system "brew install ack"
  else
    puts "[error] cannot use Homebrew to install ack"
  end

  system "git submodule update --init"
  system "vim +BundleInstall +qall"
  system "cd vim/bundle/command-t/ruby/command-t && ruby extconf.rb && make"
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
