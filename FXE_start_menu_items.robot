*** Settings ***
Documentation       FXE start menu item walkthrough

Library             RPA.Desktop
Library             RPA.Windows
Library             OperatingSystem
#Resource            ${CURDIR}\\resources\\common.resource
Resource            resources/common.resource

#Test Teardown        RPA.Desktop.Close Application    ${FXEditor_app}

*** Variables ***
#${FXEditor_app}     c:\\Program Files (x86)\\FX-Editor\\FxEditor.exe


*** Tasks ***
Start Menu Items Walkthrough
    Check Projects Common Folder Exists
    #Check And Delete Test Project
    Open FXE
    Start Page New Group Project Wizard Open Close
    Start Page Open Existing Project
    
    #Open Existing Project
    #Close All

    Log    Done.


*** Keywords ***
