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

element = driver.find_element(:class, 'irc_mi')

# ブラウザを閉じる
driver.quit
