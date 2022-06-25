*** Settings ***
Library    AppiumLibrary

*** Variables ***
${SlideHeadingLocator}    com.orange.radio.horizon:id/Slide_heading
${SlideDescripLocator}    com.orange.radio.horizon:id/slide_decrip 
${StartBtnLocator}        com.orange.radio.horizon:id/start_listen_btn
${nextBtnLocator}         com.orange.radio.horizon:id/btn_next
${SlideHeadingsleep}      Sleep timer
${SlideDescripsleep}      Set how long you want the radio or podcast to continue playing for and fall asleep while listening.
${StartBtn}               START LISTENING
${NextBtn}                NEXT

*** Keywords ***
Assertion for the slide heading
    ${Actual}=    Get Text          ${SlideHeadingLocator}
    ${Expected}=    Set Variable    ${SlideHeadingsleep}
    Should Be Equal As Strings      ${Actual}    ${Expected}   
    
Assertion for the slide description
    ${Actual}=    Get Text          ${SlideDescripLocator}
    ${Expected}=    Set Variable    ${SlideDescripsleep}
    Should Be Equal As Strings      ${Actual}    ${Expected}  
    
Assertion for start listening button
    ${Actual}=    Get Text          ${StartBtnLocator}
    ${Expected}=    Set Variable    ${StartBtn} 
    Should Be Equal As Strings      ${Actual}    ${Expected}  
 
Assertion for Next button   
    ${Actual}=    Get Text          ${NextBtnLocator}
    ${Expected}=    Set Variable    ${NextBtn}  
    Should Be Equal As Strings      ${Actual}    ${Expected}  