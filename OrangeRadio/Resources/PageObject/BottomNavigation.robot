*** Settings ***
Library      AppiumLibrary
Variables    ../../Data/Englishtranslation.yaml
Variables    ../../Data/Locators.yaml    


*** Keywords ***
#Assertion
Bottom slide heading
    ${Actual}=      Get Text        ${BottomSlideHeadingLocator}
    ${Expected}=    Set Variable    ${BottomSlideHeading}
    Should Be Equal As Strings      ${Actual}    ${Expected}   
    
Bottom slide description
    ${Actual}=      Get Text        ${BottomSlideDescripLocator}
    ${Expected}=    Set Variable    ${BottomSlideDescrip}
    Should Be Equal As Strings      ${Actual}    ${Expected}  
    
Bottom start listening button
    ${Actual}=      Get Text        ${BottomStartBtnLocator}
    ${Expected}=    Set Variable    ${BottomStartBtn} 
    Should Be Equal As Strings      ${Actual}    ${Expected}  
 
Bottom Next button   
    ${Actual}=      Get Text        ${BottomNextBtnLocator}
    ${Expected}=    Set Variable    ${BottomNextBtn}  
    Should Be Equal As Strings      ${Actual}    ${Expected}  