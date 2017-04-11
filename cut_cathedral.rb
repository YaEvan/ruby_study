require 'cgi/util'

htmlfile = "rubygems.html"
textfile = "rubygems.txt"

html = File.read(htmlfile)

File.open(textfile, "w+") do |f|
  in_header = true
  html.each_line do |line|
    if in_header && /<h1 class="home__heading">/ !~ line
      next
    else
      in_header = false
    end
    break if /<footer class="footer">/ =~ line
    ine.gsub!(/<[^>]+>/, '')
    esc_line = CGI.unescapeHTML(line)
    f.write esc_line
  end
end
