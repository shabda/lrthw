require "open-uri"

open("http://agiliq.com/") do |f|
  f.each_line{|line| print line}
  puts f.base_uri
end