#!/usr/bin/ruby

begin
  require 'irb/completion'
  require 'irb/ext/save-history'
  require 'interactive_editor'
  require 'yaml'
rescue LoadError => e
  puts "[warning] Could not load all files"
end


if defined?(IRB.conf)
  IRB.conf[:SAVE_HISTORY] = 1000
  IRB.conf[:HISTORY_FILE] = "#{ENV['HOME']}/.irb_history"
  IRB.conf[:PROMPT_MODE] = :SIMPLE
end

class Object
  def local_methods(obj=self)
    (obj.methods - obj.class.superclass.instance_methods).sort
  end

  def interesting_methods(obj=self)
    (obj.methods - Object.methods).sort
  end
  
  def ri(method = nil)
    unless method && method =~ /^[A-Z]/
      klass = self.kind_of?(Class) ? name : self.class.name
      method = [klass, method].compact.join('#')
    end
    system 'ri', method.to_s
  end
end

class String
  def /(path)
    curr_path = File.expand_path(self)

    # If we're actually dealing with a filename
    if File.exist? curr_path
      File.join(curr_path, path)
    else
      self
    end
  end
end

class Array
  def zipmap(&func)
    Hash[*zip(map &func).flatten]
  end
end

def inspect_variable(symbol, context=binding)
  puts "#{symbol} = #{eval(symbol.to_s, context)}"
end

def copy(str)
  # `copy` is an alias to the system copy function
  IO.popen('copy', 'w') {|f| f << str.to_s }
end

def paste
  # `paste` is an alias to the system copy function
  `paste`
end

def copy_history
  history = Readline::HISTORY.entries
  index = history.rindex('exit') || -1
  content = history[(index+1)..-2].join("\n")
  puts content
  copy content
end
