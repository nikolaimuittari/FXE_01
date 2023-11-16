*** Settings ***
Documentation       FXE start menu item walkthrough

Library             RPA.Desktop
Library             RPA.Windows
Library             OperatingSystem
Resource            ${CURDIR}\\resources\\common.resource
#Test Teardown        RPA.Desktop.Close Application    ${FXEditor_app}

*** Variables ***
#${FXEditor_app}     c:\\Program Files (x86)\\FX-Editor\\FxEditor.exe


*** Tasks ***
Start Menu Items Walkthrough
    Check Projects Common Folder Exists
    #Check And Delete Test Project
    #Open FXE
    Open Existing Project
    Close Opened Project Without Saving

    Log    Done.


*** Keywords ***
Open Existing Project
    Log To Console    ${FXE_TEST_PROJECT_PATH}\\${TEST_PROJECT_NAME}.fxp
    RPA.Desktop.Open File    ${FXE_TEST_PROJECT_PATH}\\${TEST_PROJECT_NAME}.fxp
