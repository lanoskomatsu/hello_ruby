require 'net/http'
require 'uri'
require 'json'
require 'pp'

user_name = ARGV[0]
host = "https://api.github.com"
query = "/users/#{user_name}"
uri = URI.parse(host+query)

http = Net::HTTP.new(uri.hostname, uri.port)
http.use_ssl = (uri.scheme == 'https')
req = Net::HTTP::Get.new(uri.request_uri)
res = http.request(req)

pp res.header

pp JSON.parse(res.body)
