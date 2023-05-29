*** Settings ***
Library    Browser


*** Test Cases ***
Eficode Has A DevOps Consultant Position Open In Helsinki
    Open Eficode Webpage
    Navigate To Careers In Helsinki
    Verify Open Position
    


*** Keywords***
Open Eficode Webpage
    New Browser    headless=${FALSE}
    Sleep    30s
    New Page    https://eficode.com/fi
    Click    id=hs-eu-confirmation-button
    Sleep    10s

Click Navigation Button
    [Arguments]    ${text}
    Click    xpath=//ul[@id="cd-primary-nav"]/li/a[text()="${text}"]

Navigate To Careers In Helsinki
    Click Navigation Button    Ura
    Click    id=cd-primary-nav >> text=Helsinki
    Switch Page    NEW
    Sleep    1s
    Click    css=h2 >> text=Open positions in Helsinki

Verify Open Position
    Scroll By    vertical=300
    Highlight Elements    text=Tell us what you want to do at Eficode!
    Take Screenshot
    Sleep    10s
    Click   text=Tell us what you want to do at Eficode!
