*** Settings ***
Library    AppiumLibrary
Variables    ../../Data/Englishtranslation.yaml
Variables    ../../Data/Locators.yaml

*** Variables ***



*** Keywords ***
Assertion for the slide heading
    ${Actual}=      Get Text        ${FavSlideHeadingLocator}
    ${Expected}=    Set Variable    ${FavSlideHeading}
    Should Be Equal As Strings      ${Actual}    ${Expected}   
    
Assertion for the slide description
    ${Actual}=      Get Text        ${FavSlideDescripLocator}
    ${Expected}=    Set Variable    ${FavSlideDescrip}
    Should Be Equal As Strings      ${Actual}    ${Expected}  
    
Assertion for start listening button
    ${Actual}=      Get Text        ${FavStartBtnLocator}
    ${Expected}=    Set Variable    ${FavStartBtn} 
    Should Be Equal As Strings      ${Actual}    ${Expected}  
 
Assertion for Next button   
    ${Actual}=      Get Text        ${FavnextBtnLocator}
    ${Expected}=    Set Variable    ${FavNextBtn}  
    Should Be Equal As Strings      ${Actual}    ${Expected}  