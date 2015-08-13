class Flatten < Processor
  def execute(args)
    merge(@outputs, args).flatten
  end
end
