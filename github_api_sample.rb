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
    pp "request url: #{url}"
    uri = URI.parse(url)
    http = Net::HTTP.new(uri.hostname, uri.port)
    http.use_ssl = (uri.scheme == 'https')
    req = Net::HTTP::Get.new(uri.request_uri)
    http.request(req)
  end

  def get_repo_names
    res = http_request
    next_url = res.header["link"].scan(/\<([^<>]+)\>; rel\="next"/)[0]&.first
    pp "next_url: #{next_url}"
    names = JSON.parse(res.body).map{|a| a["name"]}
    pp "names: #{names}"
    { next: next_url, repo_names: names }
  end

  def repos
    repos = []

    while url
      res = get_repo_names
      pp "res: #{res}"
      repos.concat(res[:repo_names])
      @url = res[:next]
      pp "#######################"
      pp "#{url}"
      pp "#{@url}"
      pp "#######################"
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
