*** Settings ***
Library    AppiumLibrary
Variables    ../../Data/Englishtranslation.yaml
Variables    ../../Data/Locators.yaml

*** Keywords ***
#Assertion
Sleep slide heading
    ${Actual}=      Get Text        ${SleepSlideHeadingLocator}
    ${Expected}=    Set Variable    ${SleepSlideHeading}
    Should Be Equal As Strings      ${Actual}    ${Expected}   
    
Sleep slide description
    ${Actual}=      Get Text        ${SleepSlideDescripLocator}
    ${Expected}=    Set Variable    ${SleepSlideDescrip}
    Should Be Equal As Strings      ${Actual}    ${Expected}  
    
Sleep start listening button
    ${Actual}=    Get Text          ${SleepStartBtnLocator}
    ${Expected}=    Set Variable    ${SleepStartBtn} 
    Should Be Equal As Strings      ${Actual}    ${Expected}  
 
Sleep Next button   
    ${Actual}=      Get Text        ${SleepNextBtnLocator}
    ${Expected}=    Set Variable    ${SleepNextBtn}  
    Should Be Equal As Strings      ${Actual}    ${Expected}  