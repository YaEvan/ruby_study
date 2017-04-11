#!/usr/bin/ruby

require 'benchmark'

puts "Running Ruby #{RUBY_VERSION}"

ary = []
10000.times {
  ary << {:bar => rand(1000)}
}

n = 10000

puts "n=#{n}"
Benchmark.bm(20) do |x|
  x.report("sort")               { n.times { ary.dup.sort{ |a,b| b[:bar] <=> a[:bar] } } }
  x.report("sort reverse")       { n.times { ary.dup.sort{ |a,b| a[:bar] <=> b[:bar] }.reverse } }
  x.report("sort_by -a[:bar]")   { n.times { ary.dup.sort_by{ |a| -a[:bar] } } }
  x.report("sort_by a[:bar]*-1") { n.times { ary.dup.sort_by{ |a| a[:bar]*-1 } } }
  x.report("sort_by.reverse")    { n.times { ary.dup.sort_by{ |a| a[:bar] }.reverse } }
  x.report("sort_by.reverse!")   { n.times { ary.dup.sort_by{ |a| a[:bar] }.reverse! } }
end



t_array =  ["ruby", "Perl", "PHP", "Python"]

sort_array = t_array.sort{ |a,b| b<=>a } #reverse
p sort_array
