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
Resource            resources/template.resource


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

    Template Selection And Import
    

    Close Opened Project Without Saving
    Splash Screen Check
    Current Window System Force Close X Button
    Splash Screen Check

