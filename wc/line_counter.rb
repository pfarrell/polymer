class LineCounter < Processor

  def execute(file_contents)
    file_contents.lines.count  
  end

end
