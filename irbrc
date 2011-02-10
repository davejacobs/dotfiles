#!/usr/bin/ruby

require 'irb/completion'
require 'irb/ext/save-history'

require 'rubygems'
require 'wirble'

IRB.conf[:SAVE_HISTORY] = 1000
IRB.conf[:HISTORY_FILE] = "#{ENV['HOME']}/.irb_history"
IRB.conf[:PROMPT_MODE] = :SIMPLE

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

def copy(str)
  IO.popen('pbcopy', 'w') {|f| f << str.to_s }
end

def paste
  `pbpaste`
end

def copy_history
  history = Readline::HISTORY.entries
  index = history.rindex('exit') || -1
  content = history[(index+1)..-2].join("\n")
  puts content
  copy content
end
