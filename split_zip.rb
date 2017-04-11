# coding: utf-8
code = ARGV[0]
start_time = Time.now
# 获取处理开始的时间
File.open("01HOKKAI.CSV","r:shift_jis").each_line do |line|
  line.chomp!
  rows = line.split(/,/)
  zipcode = rows[2].gsub(/"/,'')
  if zipcode == code
    puts line.encode('utf-8')
  end
end
p Time.now - start_time
