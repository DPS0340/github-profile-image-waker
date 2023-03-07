from selenium import webdriver
from selenium.webdriver.firefox.options import Options
import time

options = Options()
options.add_argument('-headless')
browser = webdriver.Firefox(options=options)

while True:
    browser.get("https://github.com/DPS0340")
    time.sleep(5)
