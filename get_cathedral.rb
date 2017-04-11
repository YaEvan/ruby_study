require 'open-uri'

url = "https://rubygems.org/"
filename = "rubygems.html"

File.open(filename, "w") do |f|
  text = open(url).read
  f.write text
end
