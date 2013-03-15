require "rake"
require "pathname"

desc "install dotfiles into user home directory"
task :install do
  ignored_files = [
    "Rakefile",
    "README",
    "LICENSE",
    "\..*",
    "doc"
  ]

  skeleton_files = lambda do |x|
    x.to_s =~ Regexp.new(ignored_files.join "|") 
  end

  link_files = lambda do |f|
    link_file(f.expand_path, transform_file_name(f))
  end

  Pathname.glob("*").reject(&skeleton_files).each(&link_files)
end

task :plugins do
  puts "[installing] ack..."

  homebrew_is_installed = !`which brew`.empty?
  pacman_is_installed = !`which pacman`.empty?
  
  if homebrew_is_installed
    system "brew install ack"
  elsif pacman_is_installed
    system "sudo pacman -S ack"
  else
    puts "[error] couldn't install Ack with a known package manager"
  end

  system "vim +BundleInstall +qall"
end

def transform_file_name(original_name)
  Pathname.new(ENV["HOME"]).expand_path + ".#{original_name}"
end

# Link target to prospective_symlink. replace_all allows us to implement
# a "replace all conflicting files" feature later, if we want to.
def link_file(target, symlink, replace_all=false)
  puts "[linking] #{symlink.expand_path} -> #{target.expand_path}"

  # Mode specifies the type of linking we want to do. When there
  # are conflicts:
  # - i indicates "interactively replace"
  # - f indicates "force replace"
  mode = replace_all ? "f" : "i"

  # -f and -i will mess up symlinks for directories
  mode = nil if target.directory? 

  system %Q{ln -s -v#{mode} "#{target.expand_path}" "#{symlink.expand_path}"}
end
