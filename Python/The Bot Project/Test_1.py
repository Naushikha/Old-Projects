import  time
from selenium import webdriver
from selenium.webdriver.common.keys import Keys

usr = "botprj.1@gmail.com"
pwd = "bTpRj#00001"

driver = webdriver.Chrome()
driver.get("https://m.facebook.com")
assert "Facebook" in driver.title

elem = driver.find_element_by_id("m_login_email")
elem.send_keys(usr)
try:
    elem = driver.find_element_by_id("m_login_password")
    elem.send_keys(pwd)
    elem.send_keys(Keys.RETURN)
except:
    elem = driver.find_element_by_id("m_login_email")
    elem.send_keys(Keys.RETURN)
    driver.implicitly_wait(2)
    elem = driver.find_element_by_id("m_login_password")
    elem.send_keys(pwd)
    elem.send_keys(Keys.RETURN)
time.sleep(4)
driver.get("https://m.facebook.com/photo.php?fbid=10210696135975795&id=1120641567&set=a.1399621666820.2056640.1120641567&source=48")
time.sleep(2)
driver.execute_script('function L(){x=document.getElementsByTagName("a");for(i=0;i<x.length;i++)if(x[i].innerHTML=="Like"&&x[i].getAttribute("class")=="_15ko _5a-2 touchable"){x[i].click();return}else{continue}};L()')
driver.execute_script('function L(){x=document.getElementsByTagName("a");for(i=0;i<x.length;i++)if(x[i].getAttribute("data-sigil")=="menu-link icon"&&x[i].getAttribute("class")=="_19no touchable"){x[i].click();return}else{continue}};L()')
time.sleep(3)
driver.execute_script('function L(){x=document.getElementsByTagName("a");for(i=0;i<x.length;i++)if(x[i].getAttribute("data-sigil")=="logout"&&x[i].getAttribute("class")=="_52x6 _5lut _5luu touchable"){x[i].click();return}else{continue}};L()')
time.sleep(2)
#driver.execute_script('function L(){x=document.getElementsByTagName("a");for(i=0;i<x.length;i++)if(x[i].innerHTML=="Log in to another account"&&x[i].getAttribute("class")=="_4g33 _2zs_"){x[i].click();return}else{continue}};L()')

#Safety precaution
driver.get('chrome://settings/clearBrowserData')
time.sleep(1)
elem = driver.find_element_by_css_selector("* /deep/ #cacheCheckbox")
elem.click()
elem = driver.find_element_by_css_selector("* /deep/ #clearBrowsingDataConfirm")
elem.click()
time.sleep(1)
driver.get("https://m.facebook.com")


