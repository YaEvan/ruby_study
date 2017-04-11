require "stringio"
io = StringIO.new
io.puts("A")
io.puts("B")
io.puts("C")
io.rewind
p io.read #=> "A\nB\nC\n"



io = StringIO.new("A\nB\nC\n")
p io.gets #=> "A\n"
p io.gets #=> "B\n"
p io.gets #=> "C\n"
