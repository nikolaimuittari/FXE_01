*** Settings ***
Documentation       Common resource file
# Display parameters:
# Physical resolution: 1920 * 1080
# Windows scaling: 100%

Library             RPA.Desktop
Library             RPA.Windows
Library             OperatingSystem

*** Variables ***
${FXEditor_app}             c:\\Program Files (x86)\\FX-Editor\\FxEditor.exe
${FXE_TEST_PROJECTS_FOLDER_PATH}    c:\\QA\\TestProjects
${FXE_TEST_PROJECT_PATH}    c:\\QA\\TestProjects\\${TEST_PROJECT_NAME}
${FXE_TEST_PROJECT_FILENAME_PATH}    ${FXE_TEST_PROJECT_PATH}\\${TEST_PROJECT_NAME}.fxp
${EXCEPTION_SCREENSHOT_PATH}    c:\\QA\RoboCorp\\FXE_01\\exception_images
${TEST_PROJECT_NAME}    TestProject1234
${SLEEP_TIMEOUT_DEFAULT}    0.5s



*** Keywords ***
Open FXE
    RPA.Desktop.Open Application    ${FXEditor_app}    # "c:\\Program Files (x86)\\FX-Editor\\FxEditor.exe"
    RPA.Desktop.Wait For Element    alias:FXE_start_right_down_logo    timeout=20
    RPA.Desktop.Highlight Elements    alias:FXE_start_right_down_logo

Close All
    RPA.Desktop.Close All Applications
    Log To Console    *** Close all applications OK

Check Projects Common Folder Exists
    ${folder_exists}=    Run Keyword And Return Status    OperatingSystem.Directory Should Exist    ${FXE_TEST_PROJECTS_FOLDER_PATH}
    Run Keyword If    ${folder_exists}    Log To Console    *** Test projects common folder exists OK

Check And Delete Test Project
    #OperatingSystem.Directory Should Not Exist    ${FXE_TEST_PROJECT_PATH}
    
    ${folder_exists}=    Run Keyword And Return Status    OperatingSystem.Directory Should Exist    ${FXE_TEST_PROJECT_PATH}
    Run Keyword If    ${folder_exists}    OperatingSystem.Remove Directory    ${FXE_TEST_PROJECT_PATH}    recursive=${True}
    ${folder_exists}=    Run Keyword And Return Status    OperatingSystem.Directory Should Not Exist    ${FXE_TEST_PROJECT_PATH}
    Run Keyword If    ${folder_exists}    Log To Console    *** Folder has been deleted OK

Check Empty Project Name Error
    RPA.Desktop.Click    alias:FXE_new_project_wizard_next_btn
    #Run Keyword And Ignore Error    RPA.Desktop.Click    alias:FXE_new_project_wizard_next_btn
    Sleep    ${SLEEP_TIMEOUT_DEFAULT}    
    RPA.Desktop.Wait For Element    alias:FXE_new_project_wizard_empty_proj_name_err    timeout=10
    Log To Console    *** Empty project name error is detected OK
    #RPA.Desktop.Click With Offset    alias:FXE_new_project_wizard_empty_proj_name_err    x=280    y=90    action=click
    RPA.Desktop.Press Keys    enter
    Sleep    ${SLEEP_TIMEOUT_DEFAULT}

Close Project Wizard
    RPA.Desktop.Click    alias:FXE_new_wizard_close_wizard_btn
    Sleep    ${SLEEP_TIMEOUT_DEFAULT}
    RPA.Desktop.Wait For Element    alias:FXE_start_right_down_logo    timeout=20
    Log To Console    *** Closing wizard OK


New Project Wizard
    RPA.Desktop.Wait For Element    alias:FXE_start_create_a_new_project_btn    timeout=10
    RPA.Desktop.Click    alias:FXE_start_create_a_new_project_btn
    Sleep    ${SLEEP_TIMEOUT_DEFAULT}
    
    #Run Keyword    Close Project Wizard

    #RPA.Desktop.Wait For Element    alias:FXE_start_create_a_new_project_btn    timeout=10
    #RPA.Desktop.Click    alias:FXE_start_create_a_new_project_btn
    #Sleep    ${SLEEP_TIMEOUT_DEFAULT}

    Run Keyword    Check Empty Project Name Error

    RPA.Desktop.Click    alias:FXE_new_project_wizard_location_folder_btn
    Sleep    ${SLEEP_TIMEOUT_DEFAULT}
    Run Keyword And Continue On Failure    Check Projects Common Folder Exists
    RPA.Desktop.Type Text    ${FXE_TEST_PROJECTS_FOLDER_PATH}    # enter=true
    Sleep    ${SLEEP_TIMEOUT_DEFAULT}
    RPA.Desktop.Press Keys    enter
    Sleep    ${SLEEP_TIMEOUT_DEFAULT}
    RPA.Desktop.Press Keys    tab
    Sleep    ${SLEEP_TIMEOUT_DEFAULT}
    RPA.Desktop.Press Keys    enter
    Sleep    ${SLEEP_TIMEOUT_DEFAULT}
    RPA.Desktop.Click    alias:FXE_new_project_wizard_save_folder_btn
    Sleep    ${SLEEP_TIMEOUT_DEFAULT}
    RPA.Desktop.Press Keys    tab
    Sleep    ${SLEEP_TIMEOUT_DEFAULT}
    RPA.Desktop.Type Text    TestProject1234
    RPA.Desktop.Press Keys    tab
    Sleep    ${SLEEP_TIMEOUT_DEFAULT}
    RPA.Desktop.Type Text    TestProject_1234
    RPA.Desktop.Press Keys    tab
    Sleep    ${SLEEP_TIMEOUT_DEFAULT}
    RPA.Desktop.Type Text    1234
    Sleep    ${SLEEP_TIMEOUT_DEFAULT}
    RPA.Desktop.Click    alias:FXE_new_project_wizard_next_btn
    Sleep    ${SLEEP_TIMEOUT_DEFAULT}
    Log To Console    *** Navigate to -2. Communication Settings - wizard page OK

    RPA.Desktop.Click    alias:FXE_new_project_wizard_back_btn
    Sleep    ${SLEEP_TIMEOUT_DEFAULT}
    Log To Console    *** Navigate to previous wizard page OK

    RPA.Desktop.Click    alias:FXE_new_project_wizard_next_btn
    Sleep    ${SLEEP_TIMEOUT_DEFAULT}
    RPA.Desktop.Click    alias:FXE_new_project_wizard_plc_selection_dropdn
    Sleep    ${SLEEP_TIMEOUT_DEFAULT}
    RPA.Desktop.Press Keys    down    down    enter    # FX3000X select
    Sleep    ${SLEEP_TIMEOUT_DEFAULT}
    RPA.Desktop.Click    alias:FXE_new_project_wizard_local_ip_btn    # default IP address
    Sleep    ${SLEEP_TIMEOUT_DEFAULT}
    RPA.Desktop.Click    alias:FXE_new_project_wizard_local_ip_fld
    Sleep    ${SLEEP_TIMEOUT_DEFAULT}
    RPA.Desktop.Press Keys    ctrl    a
    RPA.Desktop.Type Text    10.100.1.198    # custom IP address
    RPA.Desktop.Press Keys    tab    tab
    Sleep    ${SLEEP_TIMEOUT_DEFAULT}
    RPA.Desktop.Type Text    22
    Sleep    ${SLEEP_TIMEOUT_DEFAULT}
    RPA.Desktop.Press Keys    tab
    RPA.Desktop.Press Keys    ctrl    a
    RPA.Desktop.Type Text    SSH_user_name!    # custom SSH password    # Systemuser!  # default FX3000X SSH password
    RPA.Desktop.Press Keys    tab
    Sleep    ${SLEEP_TIMEOUT_DEFAULT}
    RPA.Desktop.Type Text    22
    RPA.Desktop.Press Keys    tab
    Sleep    ${SLEEP_TIMEOUT_DEFAULT}
    RPA.Desktop.Type Text    HUOLTO    # custom username   # system # default username
    RPA.Desktop.Press Keys    tab    
    Sleep    ${SLEEP_TIMEOUT_DEFAULT}
    RPA.Desktop.Type Text    80
    RPA.Desktop.Press Keys    tab
    Sleep    ${SLEEP_TIMEOUT_DEFAULT}
    RPA.Desktop.Type Text    13579    # custom password   # 24680    # default user password
    Sleep    ${SLEEP_TIMEOUT_DEFAULT}
    RPA.Desktop.Click    alias:FXE_new_project_wizard_next_btn
    Sleep    ${SLEEP_TIMEOUT_DEFAULT}
    Log To Console    *** Navigate to -3. Point Name Build Struccture OK

    RPA.Desktop.Click    alias:FXE_new_project_wizard_create_btn
    Sleep    ${SLEEP_TIMEOUT_DEFAULT}
    RPA.Desktop.Wait For Element    alias:FXE_project_main_project_info_bar    timeout=15
    Log To Console    *** New project has been created OK
    
Open Existing Project
    Log To Console    ${FXE_TEST_PROJECT_PATH}\\${TEST_PROJECT_NAME}.fxp
    RPA.Desktop.Open File    ${FXE_TEST_PROJECT_PATH}\\${TEST_PROJECT_NAME}.fxp
    RPA.Desktop.Wait For Element    alias:FXE_project_main_project_info_bar    timeout=25
    Log To Console    *** Project has been opened OK

Start Page New Project Wizard Open Close
    RPA.Desktop.Click    alias:FXE_start_create_a_new_project_btn
    Sleep    ${SLEEP_TIMEOUT_DEFAULT}
    RPA.Desktop.Wait For Element    alias:FXE_new_wizard_close_wizard_btn    timeout=15
    Log To Console    *** New project wizard opens OK
    
    Close Project Wizard
    
    RPA.Desktop.Wait For Element    alias:FXE_start_right_down_logo    timeout=20

Start Page New Group Project Wizard Open Close
    RPA.Desktop.Click    alias:FXE_start_create_a_new_group_project_btn
    Sleep    ${SLEEP_TIMEOUT_DEFAULT}
    RPA.Desktop.Type Text    c:\\QA\\TestProjects\\Group_1234
    Sleep    ${SLEEP_TIMEOUT_DEFAULT}
    RPA.Desktop.Press Keys    tab
    Sleep    ${SLEEP_TIMEOUT_DEFAULT}
    RPA.Desktop.Click    alias:FXE_start_create_a_new_group_project_save_btn
    Sleep    ${SLEEP_TIMEOUT_DEFAULT}
    RPA.Desktop.Move Mouse    alias:FXE_start_create_group_select_all
    RPA.Desktop.Click With Offset    x=-30    y=0    action=click
    Sleep    ${SLEEP_TIMEOUT_DEFAULT}
    RPA.Desktop.Click    alias:FXE_start_group_project_add_btn


Start Page Open Existing Project
    RPA.Desktop.Click    alias:FXE_start_open_an_existing_project_btn
    Sleep    ${SLEEP_TIMEOUT_DEFAULT}
    RPA.Desktop.Type Text    ${FXE_TEST_PROJECT_FILENAME_PATH}    # C:\QA\TestProjects\TestProject1234\TestProject1234.fxp
    Sleep    ${SLEEP_TIMEOUT_DEFAULT}
    RPA.Desktop.Press Keys    enter
    RPA.Desktop.Wait For Element    alias:FXE_project_main_project_info_bar    timeout=25
    RPA.Desktop.Click    alias:FXE_main_project_close_btn
    RPA.Desktop.Wait For Element    alias:FXE_start_right_down_logo    timeout=20

    
Close Opened Project With Saving
    RPA.Desktop.Wait For Element    alias:FXE_main_project_close_btn    timeout=15
    RPA.Desktop.Click    alias:FXE_main_project_close_btn
    # Saving dialog if project has been chnaged
    ${Saving_dialog}=    Run Keyword And Return Status    RPA.Desktop.Wait For Element    alias:FXE_project_save_msg    timeout=15
    # Pressing YES
    Run Keyword If    ${Saving_dialog}
    ...    RPA.Desktop.Click    alias:FXE_main_YES_noicon_form_btn
   

Close Opened Project Without Saving
    RPA.Desktop.Wait For Element    alias:FXE_main_project_close_btn    timeout=15
    RPA.Desktop.Click    alias:FXE_main_project_close_btn
    # Saving dialog if project has been chnaged
    ${Saving_dialog}=    Run Keyword And Return Status    RPA.Desktop.Wait For Element    alias:FXE_project_save_msg    timeout=15
    # Pressing NO
    Run Keyword If    ${Saving_dialog}
    ...    RPA.Desktop.Click    alias:FXE_main_NO_noicon_form_btn
    
       