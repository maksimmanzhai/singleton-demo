class Logger
  def initialize
    @f = File.open 'log.txt', 'a'
  end
  
  @@x = Logger.new

  def self.instance
    if @@x == nil
      @@x = Logger.new
    end
    return @@x
  end

  # class method
  def self.say_something
    puts "haha"
  end

  # instance method
  def log_something wat
    @f.puts wat
  end

  private_class_method :new
end
