@np_ask
Feature: NP ASK

  @ChangeGroup
    @FAILED
  Scenario: Student Change Group - Positive (F)
    Given I open url "http://ask-qa.portnov.com/#/login"
    Then I should see page title contains "Assessment Control"
    When I type "daribi@disarpecorp.com" into element with xpath "//input[@formcontrolname='email']"
    And I type "ABC123" into element with xpath "//input[@formcontrolname='password']"
    And I click on element with xpath "//button[@type='submit']"
    Then I wait for 2 sec
    Then element with xpath "//div[@class='info']" should contain text "TEACHER"
    When I click on element with xpath "//h5[contains(text(),'Management')]"
    And I click on element with xpath "//div[contains(text(),'Students')]"
    When I scroll to the element with xpath "//h4[contains(text(),'Nat')]" with offset 1
    And I click on element with xpath "//h4[contains(text(),'Nat')]"
    Then I wait for element with xpath "//td[contains(text(),'STUDENT')]" to be present
    Then I click on element with xpath "//button[@class='mat-raised-button mat-accent']"
    Then I wait for 2 sec
    Then I click on element with xpath "//div[@class='cdk-overlay-container']//button[3]"
#    Then I click on element with xpath "//button[@class='mat-menu-item']//mat-icon[contains(text(), 'group')]"
#    Then I click on element with xpath "//button[@class='mat-menu-item']/..//mat-icon[contains(text(), 'group')]"
    Then I clear element with xpath "//input[@formcontrolname='name']"
    And I type "XYZ" into element with xpath "//input[@formcontrolname='name']"
    And I wait for 1 sec
    And I click on element with xpath "//span[contains(text(),'Change')]"
    And I wait for 2 sec
    And I wait for element with xpath "//td[contains(text(),'XYZ')]" to be present
    And I wait for 2 sec

  @ChangeGroup
    @FAILED
  Scenario: Student Change Group - 1 White Space (F)
    Given I open url "http://ask-qa.portnov.com/#/login"
    Then I should see page title contains "Assessment Control"
    When I type "daribi@disarpecorp.com" into element with xpath "//input[@formcontrolname='email']"
    And I type "ABC123" into element with xpath "//input[@formcontrolname='password']"
    And I click on element with xpath "//button[@type='submit']"
    Then I wait for 2 sec
    Then element with xpath "//div[@class='info']" should contain text "TEACHER"
    When I click on element with xpath "//h5[contains(text(),'Management')]"
    And I click on element with xpath "//div[contains(text(),'Students')]"
    When I scroll to the element with xpath "//h4[contains(text(),'Nat')]" with offset 1
    And I click on element with xpath "//h4[contains(text(),'Nat')]"
    Then I wait for element with xpath "//td[contains(text(),'STUDENT')]" to be present
    Then I click on element with xpath "//button[@class='mat-raised-button mat-accent']"
    Then I wait for 2 sec
    Then I click on element with xpath "//div[@class='cdk-overlay-container']//button[3]"
    Then I clear element with xpath "//input[@formcontrolname='name']"
    And I wait for 2 sec
    And I type " " into element with xpath "//input[@formcontrolname='name']"
    And I click on element with xpath "//span[contains(text(),'Change')]"
    Then I wait for element with xpath "//div[@class='mat-dialog-content']/..//mat-error[@role='alert']" to be present
    And I wait for 1 sec
#    And I click on element with xpath "//span[contains(text(),'Cancel')]"
#    And I wait for 1 sec

  @ChangeGroup
  Scenario: Student Change Group - Several White Spaces (5) - Negative
    Given I open url "http://ask-qa.portnov.com/#/login"
    Then I should see page title contains "Assessment Control"
    When I type "daribi@disarpecorp.com" into element with xpath "//input[@formcontrolname='email']"
    And I type "ABC123" into element with xpath "//input[@formcontrolname='password']"
    And I click on element with xpath "//button[@type='submit']"
    Then I wait for 2 sec
    Then element with xpath "//div[@class='info']" should contain text "TEACHER"
    When I click on element with xpath "//h5[contains(text(),'Management')]"
    And I click on element with xpath "//div[contains(text(),'Students')]"
    When I scroll to the element with xpath "//h4[contains(text(),'Nat')]" with offset 1
    And I click on element with xpath "//h4[contains(text(),'Nat')]"
    Then I wait for element with xpath "//td[contains(text(),'STUDENT')]" to be present
    Then I click on element with xpath "//button[@class='mat-raised-button mat-accent']"
    Then I wait for 2 sec
    Then I click on element with xpath "//div[@class='cdk-overlay-container']//button[3]"
    Then I clear element with xpath "//input[@formcontrolname='name']"
    And I wait for 2 sec
    And I type "     " into element with xpath "//input[@formcontrolname='name']"
    And I click on element with xpath "//span[contains(text(),'Change')]"
    Then I wait for element with xpath "//mat-error[@role='alert' and contains(text(), 'Should')]" to be present
    And I wait for 1 sec
#    And I click on element with xpath "//span[contains(text(),'Cancel')]"
#    And I wait for 3 sec

  @ChangeGroup
    @FAILED
  Scenario: Student Change Group - No Characters (F)
    Given I open url "http://ask-qa.portnov.com/#/login"
    Then I should see page title contains "Assessment Control"
    When I type "daribi@disarpecorp.com" into element with xpath "//input[@formcontrolname='email']"
    And I type "ABC123" into element with xpath "//input[@formcontrolname='password']"
    And I click on element with xpath "//button[@type='submit']"
    Then I wait for 2 sec
    Then element with xpath "//div[@class='info']" should contain text "TEACHER"
    When I click on element with xpath "//h5[contains(text(),'Management')]"
    And I click on element with xpath "//div[contains(text(),'Students')]"
    When I scroll to the element with xpath "//h4[contains(text(),'Nat')]" with offset 1
    And I click on element with xpath "//h4[contains(text(),'Nat')]"
    Then I wait for element with xpath "//td[contains(text(),'STUDENT')]" to be present
    Then I click on element with xpath "//button[@class='mat-raised-button mat-accent']"
    Then I wait for 2 sec
    Then I click on element with xpath "//div[@class='cdk-overlay-container']//button[3]"
    Then I clear element with xpath "//input[@formcontrolname='name']"
    And I wait for 2 sec
    And I click on element with xpath "//span[contains(text(),'Change')]"
    Then element with xpath "//mat-error[@role='alert']" should contain text "required"
#    Then I wait for element with xpath "//div[@class='mat-dialog-content']/..//mat-error[@role='alert' and contains(text(), 'required')]" to be present
    And I wait for 2 sec
#    And I click on element with xpath "//span[contains(text(),'Cancel')]"
#    And I wait for 2 sec

  @ChangeGroup
    @FAILED
  Scenario: Student Change Group - 1 Character Min Allowed (F)
    Given I open url "http://ask-qa.portnov.com/#/login"
    Then I should see page title contains "Assessment Control"
    When I type "daribi@disarpecorp.com" into element with xpath "//input[@formcontrolname='email']"
    And I type "ABC123" into element with xpath "//input[@formcontrolname='password']"
    And I click on element with xpath "//button[@type='submit']"
    Then I wait for 2 sec
    Then element with xpath "//div[@class='info']" should contain text "TEACHER"
    When I click on element with xpath "//h5[contains(text(),'Management')]"
    And I click on element with xpath "//div[contains(text(),'Students')]"
    When I scroll to the element with xpath "//h4[contains(text(),'Nat')]" with offset 1
    And I click on element with xpath "//h4[contains(text(),'Nat')]"
    Then I wait for element with xpath "//td[contains(text(),'STUDENT')]" to be present
    Then I click on element with xpath "//button[@class='mat-raised-button mat-accent']"
    Then I wait for 2 sec
    Then I click on element with xpath "//div[@class='cdk-overlay-container']//button[3]"
    Then I clear element with xpath "//input[@formcontrolname='name']"
    And I wait for 2 sec
    And I type "7 " into element with xpath "//input[@formcontrolname='name']"
    And I wait for 2 sec
    And I click on element with xpath "//span[contains(text(),'Change')]"
#    Then element with xpath "//tr[@class='ng-star-inserted']" should contain text "7"
    And I wait for element with xpath "//td[normalize-space()='7']" to be present
    And I wait for 2 sec

  @ChangeGroup
  Scenario: Student Change Group 10 Characters Max (11)
    Given I open url "http://ask-qa.portnov.com/#/login"
    Then I should see page title contains "Assessment Control"
    When I type "daribi@disarpecorp.com" into element with xpath "//input[@formcontrolname='email']"
    And I type "ABC123" into element with xpath "//input[@formcontrolname='password']"
    And I click on element with xpath "//button[@type='submit']"
    Then I wait for 2 sec
    Then element with xpath "//div[@class='info']" should contain text "TEACHER"
    When I click on element with xpath "//h5[contains(text(),'Management')]"
    And I click on element with xpath "//div[contains(text(),'Students')]"
    When I scroll to the element with xpath "//h4[contains(text(),'Nat')]" with offset 1
    And I click on element with xpath "//h4[contains(text(),'Nat')]"
    Then I wait for element with xpath "//td[contains(text(),'STUDENT')]" to be present
    Then I click on element with xpath "//button[@class='mat-raised-button mat-accent']"
    Then I wait for 2 sec
    Then I click on element with xpath "//div[@class='cdk-overlay-container']//button[3]"
    Then I clear element with xpath "//input[@formcontrolname='name']"
    And I wait for 2 sec
    And I type "1234567890A" into element with xpath "//input[@formcontrolname='name']"
    And I click on element with xpath "//span[contains(text(),'Change')]"
    Then I wait for element with xpath "//div[@class='mat-dialog-content']/..//mat-error[@role='alert']" to be present
    And I wait for 2 sec
#    And I click on element with xpath "//span[contains(text(),'Cancel')]"
#    And I wait for 2 sec
    
