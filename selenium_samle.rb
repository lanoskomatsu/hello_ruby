require 'selenium-webdriver'

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
  # javascriptを実行してページの最下部へ移動
  driver.execute_script("window.scrollTo(0, document.body.scrollHeight);")
  sleep 3

  begin
    # "結果をもっと表示"ボタンの検出
    if driver.find_element(:id, "smb").size != 0
      element = driver.find_element(:id, "smb")
      element.click
    end
  rescue => e
    break_count += 1
    break if break_count == 5
  end
end

# ブラウザを閉じる
driver.quit
