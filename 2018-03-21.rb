require 'net/http'
require 'uri'

uri = URI.parse('https://bitflyer.jp/api/echo/price')
https = Net::HTTP.new(uri.host, uri.port)
https.use_ssl = true
res = https.start {
  https.get(uri.request_uri)
}

puts res.body
