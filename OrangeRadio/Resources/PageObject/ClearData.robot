*** Settings ***
Library    Process
Resource    ../Common.robot


*** Keywords ***
Clear orange radio cash
    ${result}=   Run Process    adb    shell    pm    clear    ${appActivity}  
    Should Be Equal As Strings    ${result.rc}    1    
