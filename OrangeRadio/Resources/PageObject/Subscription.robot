*** Settings ***
Library    AppiumLibrary
Variables    ../../Data/Englishtranslation.yaml
Variables    ../../Data/Locators.yaml


*** Keywords ***
Subscription slide heading
    ${Actual}=      Get Text        ${SubSlideHeadingLocator}
    ${Expected}=    Set Variable    ${SubSlideHeading}
    Should Be Equal As Strings      ${Actual}    ${Expected}   
    
Subscription slide description
    ${Actual}=      Get Text        ${SubSlideDescripLocator}
    ${Expected}=    Set Variable    ${SubSlideDescrip}
    Should Be Equal As Strings      ${Actual}    ${Expected}  
    
Subscription start listening button
    ${Actual}=      Get Text        ${SubStartBtnLocator}
    ${Expected}=    Set Variable    ${SubStartBtn} 
    Should Be Equal As Strings      ${Actual}    ${Expected}  
 
Subscription finish button   
    ${Actual}=      Get Text        ${SubfinishBtnLocator}
    ${Expected}=    Set Variable    ${SubfinishBtn}  
    Should Be Equal As Strings      ${Actual}    ${Expected}  