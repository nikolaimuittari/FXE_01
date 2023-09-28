*** Settings ***
Documentation       FXE main view tabs walkthrough

Library             RPA.Desktop
Library             RPA.Windows
Library             OperatingSystem

Resource            resources/fidelix_tab.resource
Resource            resources/common.resource
Resource            resources/project_tab.resource
Resource            resources/points_tab_point_edit.resource
Resource            resources/points_tab.resource
Resource    resources/browser_tab.resource
#Resource            ${CURDIR}\\resources\\common.resource
#Test Teardown        RPA.Desktop.Close Application    ${FXEditor_app}

*** Variables ***
#${FXEditor_app}     c:\\Program Files (x86)\\FX-Editor\\FxEditor.exe


*** Tasks ***
 
 Open Existing Project
     Open Existing Project

#  Project Tab
#      Project Tab Project Information Subtab
#      Project Tab Communication Settings Subtab
        
#      Project Tab Hardware Configuration Subtab
#      Project Tab Hardware Configuration Subtab New Module
    
#      Project Tab Hardware Configuration Subtab Add Modbus Address

#      Project Tab Hardware Configuration Subtab Add Modbus Device
    
#      Project Tab Point Settings Subtab
#      Project Tab Settings Subtab

# Points Tab
#      Points Tab Select
#      Left Panel Resize
#      Points Tab Select Filter Create All Kinds Of Points
#      State Text Edit Form
#      Alarm Group Edit Form
    
#     # Button Press Upload Alarmgroup To PLC
#     # Button Press Upload State Text To PLC
#     # Button Press Upload Changed Points To PLC
#     # Button Press Upload Displayed Points To PLC
#     # Button Press Upload Selected Points To PLC
#     Button Press Points Panel Resize
 
#     Left Panel Auto Resize Button
#     Right Panel Auto Resize Button

    
#     Points Tab Left Panel ALARM Right Button Edit Argument-1    TE01_L
#     Points Filter Name Filter Clear And De-Select
    
#     Points Tab Left Panel AI Right Button Edit Argument-1    TE01_MV
#     Points Filter Name Filter Clear And De-Select
         
#     Points Tab Left Panel DI Right Button Edit Argument-1    TE01_I
#     Points Filter Name Filter Clear And De-Select

#     Points Tab Left Panel DO Right Button Edit Argument-1    TE01_FM
#     Points Filter Name Filter Clear And De-Select
    
#     Points Tab Left Panel CONTROL Right Button Edit Argument-1    TE01_RG
#     Points Filter Name Filter Clear And De-Select
    
#     Points Tab Left Panel TIMETABLE Right Button Edit Argument-1    TE01_TK
#     Points Filter Name Filter Clear And De-Select

#     Points Tab Left Panel LOOKUP Right Button Edit Argument-1    TE01_KRV
#     Points Filter Name Filter Clear And De-Select

#     Points Right Panel Import Filter Edit Form
#     Points Right Panel Button Bar Add Filter Button
#     Points Right Panel Button Bar Copy Selected Filter
#     #Points Filter Name Filter Field
#     Points Filter Point Type Filter

#     # Points Right Panel Import Filter Edit Form NO Save

# Fidelix Tab    
#     # Project Tab Communication Settings Subtab Arguments-4    10.100.1.200    9    demodemo    0
#     #[Arguments]    ${ip_address}    ${plc_type}    ${ftp_passw}    ${connect}

#     Sleep    2s
#     Fidelix Tab Select
#     Sleep    2s
    
#     Fidelix Tab Right Panel Connect Button
#     Fidelix Tab Left Panel Backup PLC Argument-1    5
#     Fidelix Tab Left Panel Watchdog
#     Fidelix Tab Left Panel Add Files Argument-1    C:\\QA\\TestProjects\\TestProject1234\\Log.txt
    
#     Sleep    2s
#     Fidelix Tab Left Panel FX Folder Upload Argument-1    www
#     Fidelix Tab Right Panel FX Folder Copy Argument-1    www
#     Fidelix Tab Left Panel FX Folder Copy Argument-1    www

Browser Tab

    Project Tab Communication Settings Subtab Arguments-6    10.100.1.200    9    demodemo    0    system    24680
#     [Arguments]    ${ip_address}    ${plc_type}    ${ftp_passw}    ${connect}    ${username}    ${password}
    
    Browser Tab Select
    Fidelix Tab Home Button Argument-1    9



    Project Tab Communication Settings Subtab Arguments-6    10.100.1.198    11    demodemo    0    system    24680
#     [Arguments]    ${ip_address}    ${plc_type}    ${ftp_passw}    ${connect}    ${username}    ${password}
    Browser Tab Select
    Fidelix Tab Home Button Argument-1    11
        

Test Finish Without Saving
    # Close Opened Project Without Saving
    # Close Opened Project With Saving

    #Close All
    Display Dialog and Wait for User Action
    Log    Done.




 #Start Menu Items Walkthrough
    #Check Projects Common Folder Exists
    #Check And Delete Test Project
    #Open FXE
    #New Project Wizard
    #Close All
    #Sleep    15s
    #Open Existing Project
    #Project Tab Project Information Subtab
    #Project Tab Communication Settings Subtab
        
    #Project Tab Hardware Configuration Subtab
    #Project Tab Hardware Configuration Subtab New Module
    
    #Project Tab Hardware Configuration Subtab Add Modbus Address

    #Project Tab Hardware Configuration Subtab Add Modbus Device
    
    #Project Tab Point Settings Subtab
    #Project Tab Settings Subtab
    
    # Points Tab Select
    # Points Tab Select Filter Create All Kinds Of Points
    # State Text Edit Form
    # Alarm Group Edit Form
    
    #Button Press Upload Alarmgroup To PLC
    #Button Press Upload State Text To PLC
    #Button Press Upload Changed Points To PLC
    #Button Press Upload Displayed Points To PLC
    #Button Press Upload Selected Points To PLC
    #Button Press Points Panel Resize

    # Left Panel Resize
    # Left Panel Auto Resize Button
    # Right Panel Auto Resize Button

    
    # Points Tab Left Panel ALARM Right Button Edit Argument-1    TE01_L
    # Points Filter Name Filter Clear And De-Select
    
    # Points Tab Left Panel AI Right Button Edit Argument-1    TE01_MV
    # Points Filter Name Filter Clear And De-Select
         
    # Points Tab Left Panel DI Right Button Edit Argument-1    TE01_I
    # Points Filter Name Filter Clear And De-Select

    # Points Tab Left Panel DO Right Button Edit Argument-1    TE01_FM
    # Points Filter Name Filter Clear And De-Select
    
    # Points Tab Left Panel CONTROL Right Button Edit Argument-1    TE01_RG
    # Points Filter Name Filter Clear And De-Select
    
    # Points Tab Left Panel TIMETABLE Right Button Edit Argument-1    TE01_TK
    # Points Filter Name Filter Clear And De-Select

    # Points Tab Left Panel LOOKUP Right Button Edit Argument-1    TE01_KRV
    # Points Filter Name Filter Clear And De-Select

    
    
    #Points Filter Name Filter Field Deselect

    #Points Tab Left Panel Right Button Menu

    # Points Right Panel Import Filter Edit Form
    # Points Right Panel Button Bar Add Filter Button
    # Points Right Panel Button Bar Copy Selected Filter
    # #Points Filter Name Filter Field
    # Points Filter Point Type Filter

    # Points Right Panel Import Filter Edit Form NO Save


    # Close Opened Project Without Saving
    # #Close Opened Project With Saving

    # #Close All
    # Display Dialog and Wait for User Action
    # Log    Done.


*** Keywords ***
