*** Settings ***
Documentation       FXE new project with wizard
Library             RPA.Desktop
Library             RPA.Windows
Library             OperatingSystem
Resource            ${CURDIR}\\resources\\common.resource


*** Variables ***
#${FXEditor_app}     c:\\Program Files (x86)\\FX-Editor\\FxEditor.exe


*** Test Cases ***
New Project Uisng Wizard    
    Check Projects Common Folder Exists
    Check And Delete Test Project
    Open FXE
    New Project Wizard
    Close All
    Log  New project creation using wizard done.