#Libraries
import  time
from selenium import webdriver
from selenium.webdriver.common.keys import Keys

#Set up
driver = webdriver.Chrome()
driver.get("https://m.facebook.com")
assert "Facebook" in driver.title

#Variables
usr=''
pwd=''
clear_init=False

#Functions
def go_bot():
    global driver
    global usr,pwd
    elem = driver.find_element_by_id("m_login_email")
    elem.send_keys(usr)
    try:
        elem = driver.find_element_by_id("m_login_password")
        elem.send_keys(pwd)
        elem.send_keys(Keys.RETURN)
    except:
        elem = driver.find_element_by_id("m_login_email")
        elem.send_keys(Keys.RETURN)
        time.sleep(1)
        elem = driver.find_element_by_id("m_login_password")
        elem.send_keys(pwd)
        elem.send_keys(Keys.RETURN)
    time.sleep(4)
    driver.get(tlink)
    time.sleep(2)
    #Like link
    driver.execute_script('function L(){x=document.getElementsByTagName("a");for(i=0;i<x.length;i++)if(x[i].innerHTML=="Like"&&x[i].getAttribute("class")=="_15ko _5a-2 touchable"){x[i].click();return}else{continue}};L()')
    #Log out
    driver.execute_script('function L(){x=document.getElementsByTagName("a");for(i=0;i<x.length;i++)if(x[i].getAttribute("data-sigil")=="menu-link icon"&&x[i].getAttribute("class")=="_19no touchable"){x[i].click();return}else{continue}};L()')
    time.sleep(3)
    driver.execute_script('function L(){x=document.getElementsByTagName("a");for(i=0;i<x.length;i++)if(x[i].getAttribute("data-sigil")=="logout"&&x[i].getAttribute("class")=="_52x6 _5lut _5luu touchable"){x[i].click();return}else{continue}};L()')
    time.sleep(2)

def clear_browser():
    global driver
    global clear_init
    driver.get('chrome://settings/clearBrowserData')
    time.sleep(1)
    if clear_init==False:
        elem = driver.find_element_by_css_selector("* /deep/ #cacheCheckbox")
        elem.click()
        clear_init=True
    elem = driver.find_element_by_css_selector("* /deep/ #clearBrowsingDataConfirm")
    elem.click()
    time.sleep(1)
    driver.get("https://m.facebook.com")

#Main
task=open('task.txt','r')
tlink=task.readline()
task.close()

db=open('database.txt','r')
lgdt=db.readline()
while lgdt:
    temp= lgdt.strip().split(',')
    usr=temp[0]
    pwd=temp[1]
    #Call bot
    go_bot()
    clear_browser()
    lgdt=db.readline()
db.close()

