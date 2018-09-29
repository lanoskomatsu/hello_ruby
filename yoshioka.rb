require 'open-uri'
require 'nokogiri'
require 'FileUtils'
require 'pp'

NAVER_DOMAIN = "https://matome.naver.jp"
SEARCH_QUERY = "/search?q=%E5%90%89%E5%B2%A1%E9%87%8C%E5%B8%86"
url = NAVER_DOMAIN + SEARCH_QUERY
dirname = "yoshioka_riho"
# dirname = "yoga_pants"
FileUtils.mkdir_p(dirname) unless FileTest.exist?(dirname)

urls = []
html = Nokogiri::HTML(open(url))
urls.concat html.css('.mdSR01Main01 a').map{|a| a[:href]}.map{|a| a if a.match(%r{https://matome.naver.jp}) }.compact
pp "urls: #{urls}"

urls.each{|url|
  pp "クロール開始 url: #{url}"
  html = Nokogiri::HTML(open(url))

  image_urls = html.css('.mdMTMWidget01ItemImg01 a').map{|a| a[:href]}.map{|a| NAVER_DOMAIN + a}

  image_urls.map{|image_url|
    html = Nokogiri::HTML(open(image_url))
    img = html.css('.mdMTMEnd01Item01 a').map{|a| a[:href]}.last
    begin
      open(img) do |file|
        filename = img.split("/").last
        path = "./#{dirname}/#{filename}"
        open(path, "w+b") do |out|
          out.write(file.read)
        end
      end
    rescue
      # 何もしない
    end
    sleep 1
    pp "クロール完了 url: #{url}"
    last_page = html.css('.MdPagination03 a').map{|a| a[:href]}.count + 1
    # 最後のページをクロールしたか判定
    next if url.splt("page=").last.to_i == last_page
  }
}
