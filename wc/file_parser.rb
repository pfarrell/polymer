require './processor.rb'

class FileParser < Processor
  def execute(args)
    file=nil
    begin
      file = File.open(args[0], "rb")
      out = file.read

    ensure
      file.close
    end
  end
end
