*** Settings ***
Documentation       FXE main view tabs walkthrough
                    # Project Tab tests

Library             RPA.Desktop
Library             RPA.Windows
Library             OperatingSystem

Resource            resources/fidelix_tab.resource
Resource            resources/common.resource
Resource            resources/project_tab.resource
Resource            resources/points_tab_point_edit.resource
Resource            resources/points_tab.resource
Resource            resources/browser_tab.resource
Resource            resources/label_list_tab.resource
Resource            resources/modules_tab.resource
Resource            resources/documents_tab.resource
Resource            resources/history_tab.resource
Resource            resources/fxonline_tab.resource
Resource            resources/st_edit_tab.resource


#Resource            ${CURDIR}\\resources\\common.resource
#Test Teardown        RPA.Desktop.Close Application    ${FXEditor_app}

*** Variables ***
#${FXEditor_app}     c:\\Program Files (x86)\\FX-Editor\\FxEditor.exe
${TEST_PROJECTS_PATH}    c:\\QA\\TestProjects\\
${TEST_PROJECT_NAME}    Test-Project_1

*** Test Cases ***
Points Tab

    Check Projects Common Folder Exists
    Recreate Test Projects folder Arguments-1    c:\\QA\\TestProjects\\
    Open FXE
    New Project Wizard Arguments-1    Test-Project_1

     Points Tab Select
     Left Panel Resize
     Points Tab Select Filter Create All Kinds Of Points
     State Text Edit Form
     Alarm Group Edit Form
    
    # Button Press Upload Alarmgroup To PLC
    # Button Press Upload State Text To PLC
    # Button Press Upload Changed Points To PLC
    # Button Press Upload Displayed Points To PLC
    # Button Press Upload Selected Points To PLC
    Button Press Points Panel Resize
 
    Left Panel Auto Resize Button
    Right Panel Auto Resize Button

    
    Points Tab Left Panel ALARM Right Button Edit Argument-1    TE01_L
    Points Filter Name Filter Clear And De-Select
    
    Points Tab Left Panel AI Right Button Edit Arguments-2   TE01_MV    1
    Points Filter Name Filter Clear And De-Select
         
    Points Tab Left Panel DI Right Button Edit Argument-1    TE01_I
    Points Filter Name Filter Clear And De-Select

    Points Tab Left Panel DO Right Button Edit Argument-1    TE01_FM
    Points Filter Name Filter Clear And De-Select
    
    Points Tab Left Panel CONTROL Right Button Edit Argument-1    TE01_RG
    Points Filter Name Filter Clear And De-Select
    
    Points Tab Left Panel TIMETABLE Right Button Edit Argument-1    TE01_TK
    Points Filter Name Filter Clear And De-Select

    Points Tab Left Panel LOOKUP Right Button Edit Argument-1    TE01_KRV
    Points Filter Name Filter Clear And De-Select

    # Points Right Panel Import Filter Edit Form
    # Points Right Panel Button Bar Add Filter Button
    # Points Right Panel Button Bar Copy Selected Filter
    # Points Filter Name Filter Field
    # Points Filter Point Type Filter

    # Points Right Panel Import Filter Edit Form NO Save
    Close Opened Project Without Saving
    Splash Screen Check
    Current Window System Force Close X Button
    Splash Screen Check

