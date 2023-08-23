*** Settings ***
Documentation       FXE main view tabs walkthrough

Library             RPA.Desktop
Library             RPA.Windows
Library             OperatingSystem
Resource            resources/common.resource
Resource            resources/project_tab.resource
Resource            resources/points_tab.resource
#Resource            ${CURDIR}\\resources\\common.resource
#Test Teardown        RPA.Desktop.Close Application    ${FXEditor_app}

*** Variables ***
#${FXEditor_app}     c:\\Program Files (x86)\\FX-Editor\\FxEditor.exe


*** Tasks ***
Start Menu Items Walkthrough
    Check Projects Common Folder Exists
    # Check And Delete Test Project
    # Open FXE
    Open Existing Project
    #Project Tab Project Information Subtab
    #Project Tab Communication Settings Subtab
        
    #Project Tab Hardware Configuration Subtab
    #Project Tab Hardware Configuration Subtab New Module
    
    #Project Tab Hardware Configuration Subtab Add Modbus Address

    #Project Tab Hardware Configuration Subtab Add Modbus Device
    
    #Project Tab Point Settings Subtab
    #Project Tab Settings Subtab
    
    Points Tab Select
    #Points Tab Select Filter Create All Kinds Of Points
    #State Text Edit Form
    #Alarm Group Edit Form
    
    #Button Press Upload Alarmgroup To PLC
    #Button Press Upload State Text To PLC
    #Button Press Upload Changed Points To PLC
    #Button Press Upload Displayed Points To PLC
    #Button Press Upload Selected Points To PLC
    #Button Press Points Panel Resize

    Left Panel Resize
    Points Right Panel Import Filter Edit Form
    Points Right Panel Import Filter Edit Form NO Save


    #Close Opened Project Without Saving
    #Close Opened Project With Saving

    Close All

    Log    Done.


*** Keywords ***
Open Existing Project
    Log To Console    ${FXE_TEST_PROJECT_PATH}\\${TEST_PROJECT_NAME}.fxp
    RPA.Desktop.Open File    ${FXE_TEST_PROJECT_PATH}\\${TEST_PROJECT_NAME}.fxp
