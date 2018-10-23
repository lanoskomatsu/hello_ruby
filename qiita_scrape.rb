require 'open-uri'
require 'nokogiri'
require 'FileUtils'
require 'pp'

URL = "https://qiita.com/"
html = Nokogiri::HTML(open(URL))
