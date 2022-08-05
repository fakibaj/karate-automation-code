@tag
Feature: Login Test
   This is login test

  
  @tag1
  Scenario: Login with valid login credential in Google Chrome 
    Given driver "https://mabroook.lottoweaver.com/login"
    * driver.minimize()
    * delay(2000)
    * driver.maximize()
    And input("//input[@id='userName_email']","7666666660")
    And input("//input[@name='password']","")
    * delay(2000)
    When click("//button[@type='submit' and @class='loginClass btn']")
    * delay(2000)
    Then waitForUrl("https://mabroook.lottoweaver.com/vouchers")
    * delay(2000)
    And match driver.title == 'Vouchers'
    * delay(2000)
    
    * driver.back()
    * delay(2000)
    * driver.back()
    * delay(2000)
    
    * driver.forward()
    * delay(2000)
    
     
    
    
    