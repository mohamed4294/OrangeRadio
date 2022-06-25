*** Settings ***
Library          AppiumLibrary
Resource         ../Resources/Common.robot
Resource         ../Resources/PageObject/BottomNavigation.robot
Resource         ../Resources/PageObject/Favourites.robot
Resource         ../Resources/PageObject/FreeWithNoAds.robot
Resource         ../Resources/PageObject/SleepTimers.robot
Resource         ../Resources/PageObject/Subscription.robot
Resource         ../Resources/PageObject/WelcomeToRadio.robot
Suite Setup       Open the application
Suite Teardown    Close the application

*** Test Cases ***
# Validate_that_the_Welcome_screen_content_is_correct
    # WelcomeToRadio.Assertion for the slide heading
    # WelcomeToRadio.Assertion for the slide description
    # WelcomeToRadio.Assertion for start listening button
    # WelcomeToRadio.Assertion for Next button

    
# Validate that the free with no advertising page content is correct
    # Click Element                    ${NextBtnLocator}
    # Wait Until Element Is Visible    ${NextBtnLocator}
    # FreeWithNoAds.Assertion for the slide heading
    # FreeWithNoAds.Assertion for the slide description
    # FreeWithNoAds.Assertion for start listening button
    # FreeWithNoAds.Assertion for Next button


# Validate that the bottom navigation page content is correct
    # Click Element                    ${NextBtnLocator}
    # Wait Until Element Is Visible    ${NextBtnLocator}
    # BottomNavigation.Assertion for the slide heading
    # BottomNavigation.Assertion for the slide description
    # BottomNavigation.Assertion for start listening button
    # BottomNavigation.Assertion for Next button

# Validate that the favourites page content is correct 
    # Click Element                    ${NextBtnLocator}
    # Wait Until Element Is Visible    ${NextBtnLocator}
    # Favourites.Assertion for the slide heading
    # Favourites.Assertion for the slide description
    # Favourites.Assertion for start listening button
    # Favourites.Assertion for Next button

# Validate that the Sleep timer page content is correct 
    # Click Element                    ${NextBtnLocator}
    # Wait Until Element Is Visible    ${NextBtnLocator}
    # SleepTimers.Assertion for the slide heading
    # SleepTimers.Assertion for the slide description
    # SleepTimers.Assertion for start listening button
    # SleepTimers.Assertion for Next button
    
# Validate that the Subscriptions page content is correct 
    # Click Element                    ${NextBtnLocator}
    # Wait Until Element Is Visible    ${finishBtnLocator} 
    # Subscription.Assertion for the slide heading
    # Subscription.Assertion for the slide description
    # Subscription.Assertion for start listening button
    # Subscription.Assertion for finish button  
     
Validate that the start listening bottom working correctly 
    Click Element                    ${StartBtnLocator}
    WelcomeToRadio.Assertion for start listening

         