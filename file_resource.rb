module FileResource
  def FileResource.write(content)
    filename = Time.now.strftime('%d-%m-%y_%H:%M') + '.txt'
    File.open(filename, 'a') { |line| line.puts(content) }
    filename
  end
end
