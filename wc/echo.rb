class Echo < Processor
  def execute(arg)
    if(@outputs.empty?)
      arg
    else
      merge(@outputs, arg)
    end
  end
end
