class Processor
  attr_accessor :outputs  

  def initialize
    @outputs = []
  end

  def add_output(processor)
    @outputs << processor
  end

  def merge(outputs, arg)
    retval = []
    @outputs.each {|output| retval << output.execute(arg)}
    retval
  end

end
