*** Settings ***
Library    AppiumLibrary

*** Variables ***
${SlideHeadingLocator}    com.orange.radio.horizon:id/Slide_heading
${SlideDescripLocator}    com.orange.radio.horizon:id/slide_decrip 
${StartBtnLocator}        com.orange.radio.horizon:id/start_listen_btn
${finishBtnLocator}       com.orange.radio.horizon:id/btn_next
${SlideHeadingSub}        Subscriptions
${SlideDescripSub}        Subscribing to podcasts makes them easy to access and simple to listen to when new episodes are available.
${StartBtn}               START LISTENING
${finishBtn}              FINISH

*** Keywords ***
Assertion for the slide heading
    ${Actual}=    Get Text          ${SlideHeadingLocator}
    ${Expected}=    Set Variable    ${SlideHeadingSub}
    Should Be Equal As Strings      ${Actual}    ${Expected}   
    
Assertion for the slide description
    ${Actual}=    Get Text          ${SlideDescripLocator}
    ${Expected}=    Set Variable    ${SlideDescripSub}
    Should Be Equal As Strings      ${Actual}    ${Expected}  
    
Assertion for start listening button
    ${Actual}=    Get Text          ${StartBtnLocator}
    ${Expected}=    Set Variable    ${StartBtn} 
    Should Be Equal As Strings      ${Actual}    ${Expected}  
 
Assertion for finish button   
    ${Actual}=    Get Text          ${finishBtnLocator}
    ${Expected}=    Set Variable    ${finishBtn}  
    Should Be Equal As Strings      ${Actual}    ${Expected}  