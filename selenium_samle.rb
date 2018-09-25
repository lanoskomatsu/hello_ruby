require 'selenium-webdriver'
require 'pp'

# ブラウザの指定
driver = Selenium::WebDriver.for :chrome
# URLにジャンプ
driver.navigate.to 'https://www.google.co.jp/imghp?hl=ja&tab=wi&authuser=0'

# 検索フォームへの入力
element = driver.find_element(:name, 'q')
element.send_keys('エンジニアブーツ redwing')

# 検索ボタンの押下
element = driver.find_element(:name, 'btnG')
element.click

break_count = 0
while 1 do
  begin
    # "結果をもっと表示"ボタンの検出
    if driver.find_element(:id, "smb").size != 0
      element = driver.find_element(:id, "smb")
      element.click
      break
    end
  rescue => e
    break_count += 1
    break if break_count == 5
  end

  # javascriptを実行してページの最下部へ移動
  driver.execute_script("window.scrollTo(0, document.body.scrollHeight);")
  sleep 3
end

# id: "search" を探す
elements = driver.find_element(:id, "search").find_elements(:tag_name, "a")

# elementからaタグを取得して画像のリンクをまとめる
pp images = elements.map{|e|
  href = e.attribute('href')
  href if href&.match(/imgres/)
}.compact; nil

# imagesをループして画像の参照元URLを取得する
image_urls = images.map{|i|
  # URLにジャンプ
  pp "jump to #{i}"
  driver.navigate.to i
  sleep 1
  elements = driver.find_elements(:class, "irc_mi")

  # elementsの中から画像を探す
  elements.map{|e|
    e.attribute('src')
  }.compact[0]
}

text = image_urls.map{|i|
  "<img src='#{i}'>"
}

File.open("boots.html", "w") do |f|
  text.each { |t| f.puts(t) }
end

# ブラウザを閉じる
driver.quit
