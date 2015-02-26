require 'open-uri'
require 'nokogiri'

# @doc = Nokogiri::HTML(open("http://thinkofliving.com/forum/sitemap.xml"))
# test = @doc.xpath("//loc")
# puts test.first.content

##Get index file
# open("./src/web/index.txt", "wb") do |file|
#   open("http://thinkofliving.com/") do |uri|
#      file.write(uri.read)
#   end
# end

f = File.open("./src/web/index.txt")
@doc = Nokogiri::HTML(f)
puts @doc.xpath('//*[@id="zone-list-widget-2"]')
