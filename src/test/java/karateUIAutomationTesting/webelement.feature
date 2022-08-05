@tag
Feature: Login Test
   This is login test

  
  @tag1
  Scenario: Login with valid login credential in Google Chrome 
  * configure driver = {type : 'chrome'}
    Given driver "https://mabroook.lottoweaver.com/login" 
    And driver.dimensions = {x:0 , y:0 , width:800 , height:500 }
    * def di = driver.dimensions
    * print di
    And input("//input[@id='userName_email']","7666666660")
    And input("//input[@name='password']","")
    When click("//button[@type='submit' and @class='loginClass btn']")
    Then waitForUrl("https://mabroook.lottoweaver.com/vouchers")
    And match driver.title == 'Vouchers'