@tag
Feature: Login Test
   This is login test

  @tag1
  Scenario: Login with valid login credential in Firefox 
  * configure driver = {type : 'geckodriver' , executable: 'C:\\BrowserDriver\\geckodriver.exe'}
    Given driver "https://mabroook.lottoweaver.com/login"
    And input("//input[@id='userName_email']","7666666660")
    And input("//input[@name='password']","12345678a")
    When click("//button[@type='submit' and @class='loginClass btn']")
    Then waitForUrl("https://mabroook.lottoweaver.com/vouchers")
    Then match driver.title == 'Vouchers'
    
    
  @tag1
  Scenario: Login with valid login credential in Google Chrome 
  * configure driver = {type : 'chrome'}
    Given driver "https://mabroook.lottoweaver.com/login"
    And input("//input[@id='userName_email']","7666666660")
    And input("//input[@name='password']","")
    When click("//button[@type='submit' and @class='loginClass btn']")
    Then waitForUrl("https://mabroook.lottoweaver.com/vouchers")
    Then match driver.title == 'Vouchers'
    
    @tag1
  Scenario: Login with valid login credential in Microsoft Edge 
  * configure driver = {type : 'msedge'}
    Given driver "https://mabroook.lottoweaver.com/login"
    And input("//input[@id='userName_email']","7666666660")
    And input("//input[@name='password']","12345678a")
    When click("//button[@type='submit' and @class='loginClass btn']")
    Then waitForUrl("https://mabroook.lottoweaver.com/vouchers")
    Then match driver.title == 'Vouchers'
    
    
    