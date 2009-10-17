require 'rss'
require 'open-uri'

feed = "http://newsrss.bbc.co.uk/rss/newsonline_world_edition/uk_news/rss.xml"
content = ""

open(feed) do |f|
  content = f.read
end

rss = RSS::Parser.parse(content, false)
puts "News from #{rss.channel.title}"
puts

rss.items.each_with_index do |item, i|
  break unless i <= 5
  puts item.title.to_s
  puts item.description.to_s
  puts
end
