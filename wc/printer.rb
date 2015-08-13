class Printer < Processor
  def execute(args)
    print merge(@outputs, args)
  end
end
