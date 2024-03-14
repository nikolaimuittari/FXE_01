*** Settings ***
Documentation       FXE new project with wizard
Library             RPA.Desktop
Library             RPA.Windows
Library             OperatingSystem
Resource            common.resource
Resource            start_menu.resource

*** Variables ***
#${FXEditor_app}     c:\\Program Files (x86)\\FX-Editor\\FxEditor.exe


*** Tasks ***
New Project Uisng Wizard    
    Check Projects Common Folder Exists
    Recreate Test Projects folder Arguments-1    c:\\QA\\TestProjects\\
    Open FXE
    New Project Wizard    Test-Project_1    FX3000X
    Close Opened Project With Saving
    New Project Wizard    Test-Project_2    FX3000C
    Close Opened Project With Saving
    Start Page New Group Project Wizard Open Close
    # Start Page Add Delete Favorites
    Current Window System Force Close X Button
    Splash Screen Check
    Log To Console    New project creation using wizard done.
