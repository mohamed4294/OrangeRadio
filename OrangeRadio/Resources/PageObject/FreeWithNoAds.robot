*** Settings ***
Library    AppiumLibrary

*** Variables ***
${SlideHeadingLocator}    com.orange.radio.horizon:id/Slide_heading
${SlideDescripLocator}    com.orange.radio.horizon:id/slide_decrip
${StartBtnLocator}        com.orange.radio.horizon:id/start_listen_btn
${nextBtnLocator}         com.orange.radio.horizon:id/btn_next

${SlideHeading}           Free with no advertising
${SlideDescrip}           To provide the best possible experience the application is totally free to use.
${StartBtn}               START LISTENING
${NextBtn}                NEXT

*** Keywords ***
Assertion for the slide heading
    ${Actual}=    Get Text          ${SlideHeadingLocator}
    ${Expected}=    Set Variable    ${SlideHeading}
    Should Be Equal As Strings      ${Actual}    ${Expected}   
    
Assertion for the slide description
    ${Actual}=    Get Text          ${SlideDescripLocator}
    ${Expected}=    Set Variable    ${SlideDescrip}
    Should Be Equal As Strings      ${Actual}    ${Expected}  
    
Assertion for start listening button
    ${Actual}=    Get Text          ${StartBtnLocator}
    ${Expected}=    Set Variable    ${StartBtn} 
    Should Be Equal As Strings      ${Actual}    ${Expected}  
 
Assertion for Next button   
    ${Actual}=    Get Text          ${NextBtnLocator}
    ${Expected}=    Set Variable    ${NextBtn}  
    Should Be Equal As Strings      ${Actual}    ${Expected}  