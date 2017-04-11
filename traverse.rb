def traverse(path)
  if File.directory?(path)
    Dir.open(path) do |dir|
      while name = dir.read
        next if name == "."
        next if name == ".."
        path = path.chop if path =~ /\/$/
        traverse(path + "/" + name)
      end
    end
  else
    process_file(path)
  end
end

def process_file(path)
  puts path
end

traverse(ARGV[0])

def traverse2(path)
  Dir.glob(["#{path}/**/*", "#{path}/**/.*"]).each do |name|
    unless File.directory?(name)
      process_file(name)
    end
  end
end
traverse2(ARGV[1])
