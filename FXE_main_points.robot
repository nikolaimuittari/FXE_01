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

*** Tasks ***

Points Tab Temp
    Check Projects Common Folder Exists
    Recreate Test Projects folder Arguments-1    c:\\QA\\TestProjects\\
    Open FXE
    New Project Wizard    Test-Project_1    FX3000C

    Points Tab Select
    Left Panel Resize
    Points Tab Select Filter Create All Kinds Of Points

    Button Press Points Panel Resize
 
    Left Panel Auto Resize Button
    Right Panel Auto Resize Button

    Points Tab Left Panel ALARM Right Button Edit Argument-1    TE01_H
    Points Filter Name Filter Clear And De-Select

    Points Tab Left Panel AI Right Button Edit Arguments-2    TE01_M    1
    Points Filter Name Filter Clear And De-Select

    Points Tab Left Panel DI Right Button Edit Argument-1    TE01_I
    Points Filter Name Filter Clear And De-Select

    Points Tab Left Panel DO Right Button Edit Argument-1    TE01_FO
    Points Filter Name Filter Clear And De-Select

    Points Tab Left Panel AO Right Button Edit Arguments-2    TE01_A    1
    Points Filter Name Filter Clear And De-Select
    
    Points Tab Left Panel CONTROL Right Button Edit Argument-1    TE01_C
    Points Filter Name Filter Clear And De-Select
    
    Points Tab Left Panel TIMETABLE Right Button Edit Argument-1    TE01_T
    Points Filter Name Filter Clear And De-Select

    Points Tab Left Panel LOOKUP Right Button Edit Argument-1    TE01_L
    Points Filter Name Filter Clear And De-Select

