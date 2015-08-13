require './processor.rb'
require './file_parser.rb'
require './line_counter.rb'
require './word_counter.rb'
require './char_counter.rb'
require './echo.rb'
require './printer.rb'
require './flatten.rb'
require 'byebug'

class Runtime < Processor
  def execute(args)
    merge(@outputs, args)
  end
end

#byebug
fp = FileParser.new
lc = LineCounter.new
wc = WordCounter.new
cc = CharCounter.new
ec = Echo.new
pc = Printer.new
fl = Flatten.new
r = Runtime.new

fp.add_output(lc)
fp.add_output(wc)
fp.add_output(cc)

fl.add_output(fp)
fl.add_output(ec)
pc.add_output(fl)

#pc.add_output(fp)
#pc.add_output(ec)

r.add_output(pc)

r.execute(ARGV)

