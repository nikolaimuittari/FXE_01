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
    # Check And Delete Project Folder Argument-1    c:\\QA\\TestProjects\\Test-Project_1
    # Check And Delete Project Folder Argument-1    c:\\QA\\TestProjects\\Test-Project_2
    # Check And Delete Test Group
    # Clear Test Projects Folder Arguments-2    c:\\QA\\TestProjects\\    Test-Group
    Recreate Test Projects folder Arguments-1    c:\\QA\\TestProjects\\

    ${app_instance}=    Open FXE
    New Project Wizard Arguments-1    Test-Project_1
    Close Opened Project Without Saving
    New Project Wizard Arguments-1    Test-Project_2
    Close Opened Project Without Saving
    
    Start Page New Group Project Wizard Open Close
    
    Log   Start Menu Items Walkthrough Done.
    # Close All
    Close FXE Arguments-1    ${app_instance}
    Display Dialog and Wait for User Action

*** Keywords ***
