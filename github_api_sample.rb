require 'net/http'
require 'uri'
require 'json'
require 'pp'

class Request
  attr_reader :url
  def initialize(url)
    @url = url
  end

  def http_request
    uri = URI.parse(url)
    http = Net::HTTP.new(uri.hostname, uri.port)
    http.use_ssl = (uri.scheme == 'https')
    req = Net::HTTP::Get.new(uri.request_uri)
    http.request(req)
  end

  def repos
    repos = []
    res = http_request
    repos.concat(JSON.parse(res.body).map{|a| a["name"]})
    next_url = true

    while next_url
      next_url = res.header["link"].scan(/\<([^<>]+)\>; rel\="next"/)[0]
      next_url&.each{|url|
        res = Request.new(url).http_request
        repos.concat(JSON.parse(res.body).map{|a| a["name"]})
      }
    end

    repos
  end
end

user_name = ARGV[0]
host = "https://api.github.com"
query = "/users/#{user_name}/repos?type=all"

repos = []
res = Request.new(host+query).repos

pp res.size
pp res
