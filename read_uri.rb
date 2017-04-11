# coding: utf-8
require "open-uri"
# 通过 HTTP 读取数据
open("http://www.ruby-lang.org") do |io|
  puts io.read # 将 Ruby 的官方网页输出到控制台
end
# 通过 FTP 读取数据
url = "ftp://www.ruby-lang.org/pub/ruby/2.0/ruby-2.0.0-p0.tar.gz"
open(url) do |io|
  open("ruby-2.0.0-p0.tar.gz", "w") do |f| # 打开本地文件
    f.write(io.read)
  end
end
