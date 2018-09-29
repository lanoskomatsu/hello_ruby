require 'open-uri'
require 'nokogiri'
require 'FileUtils'
require 'pp'

NAVER_DOMAIN = "https://matome.naver.jp"
SEARCH_QUERY = "/search?q=%E5%90%89%E5%B2%A1%E9%87%8C%E5%B8%86"
url = NAVER_DOMAIN + SEARCH_QUERY

dirname = "yoshioka_riho"
FileUtils.mkdir_p(dirname) unless FileTest.exist?(dirname)

urls = []
html = Nokogiri::HTML(open(url))
urls.concat html.css('.mdSR01Main01 a').map{|a| a[:href]}.map{|a| a if a.match(%r{https://matome.naver.jp}) }.compact
pp "urls: #{urls}"

urls.each{|url|
  html = Nokogiri::HTML(open(url))

  # ページリストを作成
  last_page = html.css('.MdPagination03 a').map{|a| a[:href]}.count + 1
  pages = (1..last_page).map{|i| url + "?&page=#{i}"}
  pp "pages: #{pages}"

  pages.each{|page|
    pp "クロール開始 url: #{page}"
    # 1ページ以降の場合はページを開く
    html = Nokogiri::HTML(open(page)) if page.split("page=").last.to_i > 1

    image_urls = html.css('.mdMTMWidget01ItemImg01 a').map{|a| a[:href]}.map{|a| NAVER_DOMAIN + a}

    image_urls.map{|image_url|
      begin
        html = Nokogiri::HTML(open(image_url))
        img = html.css('.mdMTMEnd01Item01 a').map{|a| a[:href]}.last
        open(img) do |file|
          filename = img.split("/").last
          path = "./#{dirname}/#{filename}"
          open(path, "w+b") do |out|
            pp "filename: #{filename}"
            out.write(file.read)
          end
        end
      rescue => e
        # 何もしない
        pp "ERROR: image_url: #{image_url}, image: #{img}, message: #{e.message}"
      end
    }
  }
  pp "クロール完了 url: #{url}"
  sleep 1
}
