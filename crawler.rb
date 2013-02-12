require "rubygems"
require "nokogiri"
require "open-uri"
url = "http://www.linkedin.com/pub/sarah-cornblath/12/12/12"
linkedin_page = Nokogiri::HTML (open(url)) 
linkedin_data_extract = [
#Profile Header
linkedin_page.css('div#member-1 h1 .full-name'), 
linkedin_page.css('div#member-1 p.headline-title'),
linkedin_page.css('dl#headline .locality'),
linkedin_page.css('dl#headline .industry'),

#Overview
linkedin_page.css('dl#overview .current'), 
linkedin_page.css('dl#overview .past'), 
linkedin_page.css('dl#overview .summary-education'), 
linkedin_page.css('dl#overview .overview-connections'),

#Work Experience
#Current Work
linkedin_page.css('div#profile-experience .first .title'),
linkedin_page.css('div#profile-experience .first .org'),
linkedin_page.css('div#profile-experience .first .orgstats'),
linkedin_page.css('div#profile-experience .first .period'),

#Past work (Cannot separate these out from each other). 
linkedin_page.css('div#profile-experience .summary-past .title'),
linkedin_page.css('div#profile-experience .summary-past .org'),
linkedin_page.css('div#profile-experience .summary-past .orgstats'),
linkedin_page.css('div#profile-experience .summary-past .period'),

#Education
linkedin_page.css('div#profile-education .first .summary'),
linkedin_page.css('div#profile-education .first .degree'),
linkedin_page.css('div#profile-education .first .major'),
linkedin_page.css('div#profile-education .first .period'),
linkedin_page.css('div#profile-education .first .details-education'),

]
linkedin_data_extract.each do |lde|
puts lde.text
end