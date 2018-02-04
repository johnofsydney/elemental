require 'rubygems'
require 'nokogiri'
require 'open-uri'
require 'fileutils'
BASE_URL = 'https://en.wikipedia.org/wiki/'
BASE_DIR = 'Tin'
LOCAL_DIR = 'dump'

# https://www.realestate.com.au/sold/in-bondi%3b/list-1
# https://www.realestate.com.au/sold/property-house-in-bondi/list-1

FileUtils.makedirs(LOCAL_DIR) unless File.exists?LOCAL_DIR

# # get metainfo from first page:
# page = Nokogiri::HTML(open(BASE_URL+BASE_DIR + '1'))
# last_page_number = 3


# write the HTML for page 1 to disk
# File.open("#{LOCAL_DIR}/all.html", 'w'){|f| f.write(page.css('.property-price'))}



# puts "Iterating from 1 to #{last_page_number}"


para = Nokogiri::HTML(open(BASE_URL+BASE_DIR)).css('.mw-parser-output p')[0]
puts para




  File.open("#{LOCAL_DIR}/all.html", 'w') do |f|


    f.write( para )







  end




#

# f.write( Nokogiri::HTML(open(BASE_URL+BASE_DIR)).css('.mw-parser-output'))
# address1 = page2.css('h1.property-info-address')[0].children[0].children[0].content
