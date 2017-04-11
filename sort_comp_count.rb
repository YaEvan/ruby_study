# coding: utf-8
ary = %w(Ruby is a open source programming language with a focus on simplicity and productivity. It has an elegant synatax that is natural to read and easy to write)

call_num = 0;
sorted = ary.sort do  |a, b|
  call_num += 1
  a.length <=> b.length
end

puts "排序结果 #{sorted}"
puts "数组的元素数量 #{ary.length}"
puts "调用块的次数 #{call_num}"


call_num2 = 0;

sorted2 = ary.sort_by{ |item|
  call_num2 += 1
  item.length }
puts sorted2
puts call_num2
