*** Settings ***
Library    AppiumLibrary
Variables    ../../Data/Locators.yaml
Variables    ../../Data/Englishtranslation.yaml
     
*** Variables ***


*** Keywords ***
Welcome slide heading
    ${Actual}=      Get Text        ${SlideHeadingWelcomeLocator}
    ${Expected}=    Set Variable    ${SlideHeadingWelcome} 
    Should Be Equal As Strings      ${Actual}    ${Expected}   
    
Welcome slide description
    ${Actual}=      Get Text        ${SlideDescripWelcomeLocator}
    ${Expected}=    Set Variable    ${SlideDescripWelcome} 
    Should Be Equal As Strings      ${Actual}    ${Expected}  
    
Welcome start listening button
    ${Actual}=      Get Text        ${StartBtnWelcomeLocator}
    ${Expected}=    Set Variable    ${StartBtnWelcome} 
    Should Be Equal As Strings      ${Actual}    ${Expected}  
 
Welcome Next button   
    ${Actual}=      Get Text        ${NextBtnWelcomeLocator}
    ${Expected}=    Set Variable    ${NextBtnWelcome}  
    Should Be Equal As Strings      ${Actual}    ${Expected}  

Welcome start listening
    ${Actual}      Get Text         ${ChooseCountryWelcomeLocator}
    ${Expected}    Set Variable     ${ChooseCountryWelcome}
    Should Be Equal As Strings      ${Actual}    ${Expected}    
   