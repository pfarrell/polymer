class WordCounter < Processor
  def execute(args)
    parsed = args.gsub(/\s+/, ' ')
    out = parsed.split(/\s/).size 
    if(@outputs.empty?)
      out
    else
      merge(@outputs, out)
    end
  end
end
