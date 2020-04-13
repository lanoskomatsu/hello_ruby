require 'net/http'
require 'uri'
require 'json'
require 'pp'

def http_request(url)
  uri = URI.parse(url)
  http = Net::HTTP.new(uri.hostname, uri.port)
  http.use_ssl = (uri.scheme == 'https')
  req = Net::HTTP::Get.new(uri.request_uri)
  http.request(req)
end

user_name = ARGV[0]
host = "https://api.github.com"
query = "/users/#{user_name}/repos"

repos = []
res = http_request(host+query)
repos.push(JSON.parse(res.body).map{|a| a["name"]})

next_url = res.header["link"].split(";").map{|a| a.scan(/https:\/\/.*page=\d/) }.flatten
next_url.each{|url|
  res = http_request(url)
  repos.push(JSON.parse(res.body).map{|a| a["name"]})
}

pp repos.flatten.size
pp repos.flatten
