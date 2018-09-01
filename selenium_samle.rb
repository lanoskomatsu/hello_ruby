require 'selenium-webdriver'

driver = Selenium::WebDriver.for :chrome

driver.navigate.to 'https://www.google.co.jp/imghp?hl=ja&tab=wi&authuser=0'

element = driver.find_element(:name, 'q')
element.send_keys('エンジニアブーツ redwing')

element = driver.find_element(:name, 'btnG')
element.click

driver.quit
