*** Settings ***
Documentation       FXE new project with wizard
Library             RPA.Desktop
Library             RPA.Windows
Library             OperatingSystem
Resource            common.resource
Resource            start_menu.resource

*** Variables ***
#${FXEditor_app}     c:\\Program Files (x86)\\FX-Editor\\FxEditor.exe


*** Test Cases ***
New Project Uisng Wizard    
    Check Projects Common Folder Exists
    #    Check And Delete Test Project
    Recreate Test Projects folder Arguments-1    c:\\QA\\TestProjects\\
    Open FXE
    New Project Wizard Arguments-1    Test-Project_1
    Close Opened Project Without Saving
    Log  New project creation using wizard done.