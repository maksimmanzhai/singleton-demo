require 'singleton'

class Logger
  include Singleton

  def initialize
    @f = File.open 'log.txt', 'a'
  end
 
  # instance method
  def log_something wat
    @f.puts wat
    @f.flush
  end

end
