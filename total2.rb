# coding: utf-8
def total2(from, to, &block)
  result = 0
  # 合计值
  from.upto(to) do |num| # 处理从 from 到 to 的值
    if block
      # 如果有块的话
      result +=
        #累加经过块处理的值
      block.call(num)
    else
      # 如果没有块的话
      result += num
      #直接累加
    end
  end
  return result
  # 返回方法的结果
end
p total2(1, 10)
# 从 1 到 10 的和 => 55
p total2(1, 10){|num| num ** 2 }


def call_each(ary, &block)
  ary.each(&block)
end

call_each [1, 2, 3] do |item|
  p item
end
