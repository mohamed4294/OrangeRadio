*** Settings ***
Library    AppiumLibrary

*** Variables ***
${APPIUM_SERVER}      http://localhost:4723/wd/hub
${platformName}       Android
${platformVersion}    4.2.2
${deviceName}         Samsung A52
${app}    ${CURDIR}   /demoapp/OrangeDemoApp.apk
${appPackage}         com.orange.radio.horizon
${appActivity}        com.orange.radio.horizon.onboarding.OnBoardingActivity
${deviceUdid}         b436b799


*** Keywords ***
Open the application
        Open Application	${APPIUM_SERVER}
    ...	platformName=${platformName}
    ...	platformVersion=${platformVersion}
    ...	deviceName=${deviceName} 
    ...    udid=${deviceUdid}
    ...	appPackage=${appPackage}
    ...	appActivity=${appActivity}
    ...    automationName=UiAutomator2
   
 
Close the application
    Close Application
    

Assertion
    [Arguments]    ${ActualLocator}    ${ExpectedValue}
    ${Actual}=    Get Text    ${ActualLocator}
    ${Expected}=    Set Variable    ${ExpectedValue}
    Should Be Equal As Strings    ${Actual}    ${Expected}   
    

    