require 'open-uri'

url = 'https://qiita.com/search?q=ruby'
charset = nil

html = open(url) do |f|
    charset = f.charset
    f.read
end

p html
