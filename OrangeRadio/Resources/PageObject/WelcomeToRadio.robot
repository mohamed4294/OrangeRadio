*** Settings ***
Library    AppiumLibrary

*** Variables ***
${SlideHeadingLocator}     com.orange.radio.horizon:id/Slide_heading
${SlideDescripLocator}     com.orange.radio.horizon:id/slide_decrip
${StartBtnLocator}         com.orange.radio.horizon:id/start_listen_btn
${NextBtnLocator}          com.orange.radio.horizon:id/btn_next
${ChooseCountryLocator}    com.orange.radio.horizon:id/chooseCountryTitle
${SlideHeadingWelcome}     Welcome to Orange Radio
${SlideDescripWelcome}     Discover more than 33,000 radios and 6,000 podcasts from countries all over the world.
${StartBtn}                START LISTENING
${NextBtn}                 NEXT
${ChooseCountry}           Choose a country

*** Keywords ***
Assertion for the slide heading
    ${Actual}=    Get Text          ${SlideHeadingLocator}
    ${Expected}=    Set Variable    ${SlideHeadingWelcome} 
    Should Be Equal As Strings      ${Actual}    ${Expected}   
    
Assertion for the slide description
    ${Actual}=    Get Text          ${SlideDescripLocator}
    ${Expected}=    Set Variable    ${SlideDescripWelcome} 
    Should Be Equal As Strings      ${Actual}    ${Expected}  
    
Assertion for start listening button
    ${Actual}=    Get Text          ${StartBtnLocator}
    ${Expected}=    Set Variable    ${StartBtn} 
    Should Be Equal As Strings      ${Actual}    ${Expected}  
 
Assertion for Next button   
    ${Actual}=    Get Text          ${NextBtnLocator}
    ${Expected}=    Set Variable    ${NextBtn}  
    Should Be Equal As Strings      ${Actual}    ${Expected}  

Assertion for start listening
    ${Actual}    Get Text           ${ChooseCountryLocator}
    ${Expected}    Set Variable     ${ChooseCountry}
    Should Be Equal As Strings    ${Actual}    ${Expected}    
   