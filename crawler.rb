require "rubygems"
require "nokogiri"
require "open-uri"
url = "http://www.linkedin.com/pub/sarah-cornblath/12/12/12"
linkedin_page = Nokogiri::HTML (open(url)) 
puts linkedin_page
