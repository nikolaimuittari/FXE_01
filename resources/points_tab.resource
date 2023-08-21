*** Settings ***
Documentation       Common resource file

Library             RPA.Desktop
Library             RPA.Windows
Library             OperatingSystem
Library             DateTime
Library             RPA.RobotLogListener


Resource            resources/common.resource


*** Variables ***
#${FXEditor_app}             c:\\Program Files (x86)\\FX-Editor\\FxEditor.exe
#${FXE_TEST_PROJECTS_FOLDER_PATH}    c:\\QA\\TestProjects
#${FXE_TEST_PROJECT_PATH}    c:\\QA\\TestProjects\\${TEST_PROJECT_NAME}
#${FXE_TEST_PROJECT_FILENAME_PATH}    ${FXE_TEST_PROJECT_PATH}\\${TEST_PROJECT_NAME}.fxp
#${EXCEPTION_SCREENSHOT_PATH}    c:\\QA\RoboCorp\\FXE_01\\exception_images
#${TEST_PROJECT_NAME}    TestProject1234
#${SLEEP_TIMEOUT_DEFAULT}    1s
${current_date}=    Get Current Date    result_format=%d.%m.%y
    


*** Keywords ***

Points Tab Select
    RPA.Desktop.Wait For Element    alias:FXE_project_main_project_info_bar    timeout=25
    RPA.Desktop.Click    alias:FXE_main_points_tab
    
    Sleep    ${SLEEP_TIMEOUT_DEFAULT}
    RPA.Desktop.Wait For Element    alias:FXE_main_points_tab_add_btn    timeout=25    # Waiting for Points Tab Add+Upload butttons
    RPA.Desktop.Highlight Elements    alias:FXE_main_points_tab_add_btn

Points Tab Select Filter Create All Kinds Of Points
    
    RPA.Desktop.Wait For Element    alias:FXE_project_main_project_info_bar    timeout=25
    RPA.Desktop.Click    alias:FXE_main_points_tab
    Sleep    ${SLEEP_TIMEOUT_DEFAULT}
    
    RPA.Desktop.Move Mouse    alias:FXE_main_points_tab_select_filter_dropdown    # "Select filter" dropdown. Dims: 115*41    central: 57*20
    RPA.Desktop.Click With Offset    x=49    y=0    action=click    # Text field offset  
    Sleep    ${SLEEP_TIMEOUT_DEFAULT}

    RPA.Desktop.Press Keys    down    # "Default" filter select
    RPA.Desktop.Press Keys    enter    # Select filter 
    Sleep    ${SLEEP_TIMEOUT_DEFAULT}

    # "Adding new points" button
    RPA.Desktop.Click    alias:FXE_main_points_tab_add_button    # "Add point" button
    
    # Waiting for "Add points" form
    RPA.Desktop.Wait For Element    alias:FXE_main_points_tab_add_points_form    timeout=25    # Add point form. Dim: 392*488, center: 196*244
    
    # Add points form
    Sleep    ${SLEEP_TIMEOUT_DEFAULT}
    RPA.Desktop.Move Mouse    alias:FXE_main_points_tab_add_points_form    # Moving to the form's center    
    RPA.Desktop.Click With Offset    x=-134    y=-172    action=doubleclick    # Pointname text field
    RPA.Desktop.Type Text    TE01    # TE01 pointname
    # RPA.Desktop.Press Keys    tab    # Text field
    
    Sleep    ${SLEEP_TIMEOUT_DEFAULT}
    RPA.Desktop.Move Mouse    alias:FXE_main_points_tab_add_points_form    # Moving to the form's center
    RPA.Desktop.Click With Offset    x=-149    y=-127    action=doubleclick    # Point text text field
    RPA.Desktop.Type Text    TE01 point text     # Point text
    # RPA.Desktop.Press Keys    Tab    # 
    
    Sleep    ${SLEEP_TIMEOUT_DEFAULT}
    RPA.Desktop.Move Mouse    alias:FXE_main_points_tab_add_points_form    # Moving to the form's center
    RPA.Desktop.Click With Offset    x=-52    y=-53    action=Click    # Alarm #1 checkbox

    Sleep    ${SLEEP_TIMEOUT_DEFAULT}
    RPA.Desktop.Move Mouse    alias:FXE_main_points_tab_add_points_form    # Moving to the form's center
    RPA.Desktop.Click With Offset    x=31    y=-53    action=Click    # Alarm #2 checkbox

    Sleep    ${SLEEP_TIMEOUT_DEFAULT}
    RPA.Desktop.Move Mouse    alias:FXE_main_points_tab_add_points_form    # Moving to the form's center
    RPA.Desktop.Click With Offset    x=118    y=-53    action=Click    # Alarm #3 checkbox
    
    
    # RPA.Desktop.Click With Offset    x=-8    y=-53    action=Click    # Alarm #1 Text field
    # RPA.Desktop.Click With Offset    x=80    y=-53    action=Click    # Alarm #2 Text field
    # RPA.Desktop.Click With Offset    x=162    y=-53    action=Click    # Alarm #3 Text field
    
    Sleep    ${SLEEP_TIMEOUT_DEFAULT}
    RPA.Desktop.Move Mouse    alias:FXE_main_points_tab_add_points_form    # Moving to the form's center
    RPA.Desktop.Click With Offset    x=-52    y=-23    action=click    # DI indication #1 checkbox

    Sleep    ${SLEEP_TIMEOUT_DEFAULT}
    RPA.Desktop.Move Mouse    alias:FXE_main_points_tab_add_points_form    # Moving to the form's center
    RPA.Desktop.Click With Offset    x=31    y=-23    action=click    # DI indication #2 checkbox
    
    # RPA.Desktop.Click With Offset    x=-8    y=-23    action=Click    # DI Indication #1 Text field
    # RPA.Desktop.Click With Offset    x=80    y=-23    action=Click    # DI Indication #2 Text field

    Sleep    ${SLEEP_TIMEOUT_DEFAULT}
    RPA.Desktop.Move Mouse    alias:FXE_main_points_tab_add_points_form    # Moving to the form's center
    RPA.Desktop.Click With Offset    x=-52    y=5    action=click    # DO digital output #1 checkbox
    
    Sleep    ${SLEEP_TIMEOUT_DEFAULT}
    RPA.Desktop.Move Mouse    alias:FXE_main_points_tab_add_points_form    # Moving to the form's center
    RPA.Desktop.Click With Offset    x=31    y=5    action=click    # DO digital output #2 checkbox

    # RPA.Desktop.Click With Offset    x=-8    y=5    action=Click    # DO digital output #1 Text field
    # RPA.Desktop.Click With Offset    x=80    y=5    action=Click    # DO digital output #2 Text field

    Sleep    ${SLEEP_TIMEOUT_DEFAULT}
    RPA.Desktop.Move Mouse    alias:FXE_main_points_tab_add_points_form    # Moving to the form's center
    RPA.Desktop.Click With Offset    x=-52    y=36    action=click    # Measurement checkbox

    # RPA.Desktop.Click With Offset    x=-8    y=36    action=Click    # Measurement Text field

    Sleep    ${SLEEP_TIMEOUT_DEFAULT}
    RPA.Desktop.Move Mouse    alias:FXE_main_points_tab_add_points_form    # Moving to the form's center
    RPA.Desktop.Click With Offset    x=-52    y=65    action=click    # AO point checkbox

    # RPA.Desktop.Click With Offset    x=-8    y=65    action=Click    # AO point Text field
    
    Sleep    ${SLEEP_TIMEOUT_DEFAULT}
    RPA.Desktop.Move Mouse    alias:FXE_main_points_tab_add_points_form    # Moving to the form's center
    RPA.Desktop.Click With Offset    x=-52    y=91    action=click    # Control point checkbox

    # RPA.Desktop.Click With Offset    x=-8    y=91    action=Click    # Control point Text field

    Sleep    ${SLEEP_TIMEOUT_DEFAULT}
    RPA.Desktop.Move Mouse    alias:FXE_main_points_tab_add_points_form    # Moving to the form's center
    RPA.Desktop.Click With Offset    x=-52    y=118    action=click    # Time schedule point checkbox

    # RPA.Desktop.Click With Offset    x=-8    y=118    action=Click    # Time schedule point Text field
    
    Sleep    ${SLEEP_TIMEOUT_DEFAULT}
    RPA.Desktop.Move Mouse    alias:FXE_main_points_tab_add_points_form    # Moving to the form's center
    RPA.Desktop.Click With Offset    x=-52    y=149    action=click    # Lookup table point checkbox

    # RPA.Desktop.Click With Offset    x=-8    y=149    action=Click    # Lookup table point Text field
    
    Sleep    ${SLEEP_TIMEOUT_DEFAULT}
    RPA.Desktop.Move Mouse    alias:FXE_main_points_tab_add_points_form    # Moving to the form's center
    RPA.Desktop.Click With Offset    x=-8    y=179    action=Click    # Filter dropdown list

    # Filter checkbox is checked by default.
    # Uncheck
    # Sleep    ${SLEEP_TIMEOUT_DEFAULT}
    # RPA.Desktop.Move Mouse    alias:FXE_main_points_tab_add_points_form    # Moving to the form's center
    # RPA.Desktop.Click With Offset    x=-52    y=179    action=click    # Filter dropdown list checkbox

    # 
    Sleep    ${SLEEP_TIMEOUT_DEFAULT}
    RPA.Desktop.Move Mouse    alias:FXE_main_points_tab_add_points_form    # Moving to the form's center
    RPA.Desktop.Click With Offset    x=-52    y=179    action=click    # Filter dropdown list checkbox

    # Adding points button
    Sleep    ${SLEEP_TIMEOUT_DEFAULT}
    RPA.Desktop.Click    alias:FXE_main_ADD_points_form_btn    action=click     # ADD points form button
    
    Sleep    ${SLEEP_TIMEOUT_DEFAULT}
    RPA.Desktop.Click    alias:FXE_main_CLOSE_points_form_btn    action=click    # CLOSE points form button 


Button Press Upload Selected Points To PLC
    RPA.Desktop.Wait For Element    alias:FXE_main_points_tab_add_upload_btn    timeout=25    # Add + Upload SELECTED buttons locator. Dims:  102*44 center: 51*22
    RPA.Desktop.Move Mouse    alias:FXE_main_points_tab_add_upload_btn    # Moving to the form's center
    RPA.Desktop.Click With Offset    x=25    y=0    action=click    # Upload points to PLC button click

    ${connection_failed_form_exists}=    Run Keyword And Return Status    RPA.Desktop.Wait For Element    alias:FXE_main_points_tab_connection_failed_form    timeout=25
    Run Keyword If    ${connection_failed_form_exists}    RPA.Desktop.Move Mouse    alias:FXE_main_points_tab_connection_failed_form
    Run Keyword If    ${connection_failed_form_exists}    RPA.Desktop.Click    alias:FXE_main_more_information_drop_btn   # Connection failed form information button
    Run Keyword If    ${connection_failed_form_exists}    RPA.Desktop.Click    alias:FXE_main_OK_noicon_form_btn   # Connection failed form OK

Button Press Upload Displayed Points To PLC
    RPA.Desktop.Wait For Element    alias:FXE_main_points_tab_upload_displayed_btn    timeout=25    # Upload DISPLAYED points locator.
    RPA.Desktop.Click    alias:FXE_main_points_tab_upload_displayed_btn    # Upload Displayed points to PLC button click

    ${connection_failed_form_exists}=    Run Keyword And Return Status    RPA.Desktop.Wait For Element    alias:FXE_main_points_tab_connection_failed_form    timeout=25
    Run Keyword If    ${connection_failed_form_exists}    RPA.Desktop.Move Mouse    alias:FXE_main_points_tab_connection_failed_form
    Run Keyword If    ${connection_failed_form_exists}    RPA.Desktop.Click    alias:FXE_main_more_information_drop_btn   # Connection failed form information button
    Run Keyword If    ${connection_failed_form_exists}    RPA.Desktop.Click    alias:FXE_main_OK_noicon_form_btn   # Connection failed form OK
    
Button Press Upload Changed Points To PLC
    RPA.Desktop.Wait For Element    alias:FXE_main_points_tab_upload_changed_btn    timeout=25    # Upload CHANGED points locator.

    ${connection_failed_form_exists}=    Run Keyword And Return Status    RPA.Desktop.Wait For Element    alias:FXE_main_points_tab_connection_failed_form    timeout=25
    Run Keyword If    ${connection_failed_form_exists}    RPA.Desktop.Move Mouse    alias:FXE_main_points_tab_connection_failed_form
    Run Keyword If    ${connection_failed_form_exists}    RPA.Desktop.Click    alias:FXE_main_more_information_drop_btn   # Connection failed form information button
    Run Keyword If    ${connection_failed_form_exists}    RPA.Desktop.Click    alias:FXE_main_OK_noicon_form_btn   # Connection failed form OK

State Text Edit Form
    RPA.Desktop.Wait For Element    alias:FXE_main_points_tab_state_text_upload_btn    timeout=25    # State text edit button locator.
    
    RPA.Desktop.Move Mouse    alias:FXE_main_points_tab_state_text_upload_btn    # State text edit button locator.
    RPA.Desktop.Click With Offset    x=-25    y=0    action=click    # State text EDIT FORM button

    RPA.Desktop.Wait For Element    alias:FXE_main_points_tab_statetext_edit_form    timeout=25    # State text edit form locator. Dims: 527*643  center: 264*322
    RPA.Desktop.Click With Offset    x=-202    y=-184    action=click    # Textgroup name first line

    ${repeats}    Set Variable    29    # Number of repeats
    FOR    ${index}    IN RANGE    1    ${repeats}
        RPA.Desktop.Press Keys    down
    END    

    RPA.Desktop.Move Mouse    alias:FXE_main_points_tab_statetext_edit_form    # State text edit form locator.
    RPA.Desktop.Click With Offset    x=-202    y=-183    action=doubleclick    # DOUBLECLICK Textgroup name first line
    RPA.Desktop.Type Text    TEST_STATE_TEXT

    RPA.Desktop.Move Mouse    alias:FXE_main_points_tab_statetext_edit_form    # State text edit form locator.
    RPA.Desktop.Click With Offset    x=27    y=-183    action=doubleclick    # DOUBLECLICK Textgroup right panel VALUE first line
    RPA.Desktop.Type Text    999

    RPA.Desktop.Move Mouse    alias:FXE_main_points_tab_statetext_edit_form    # State text edit form locator.
    RPA.Desktop.Click With Offset    x=56    y=-183    action=doubleclick    # DOUBLECLICK Textgroup right panel TEXT first line
    RPA.Desktop.Type Text    STATE text 999
    
    # Synchronize checkbox
    RPA.Desktop.Move Mouse    alias:FXE_main_points_tab_statetext_edit_form    # State text edit form locator.
    RPA.Desktop.Click With Offset    x=-247    y=304    action=click    # Checkbox click
    RPA.Desktop.Click With Offset    x=-247    y=304    action=click    # Checkbox click

    # RPA.Desktop.Click    alias:FXE_main_OK_round_form_btn    # OK button (Round)
    RPA.Desktop.Click    alias:FXE_main_CANCEL_form_btn    # CANCEL button

Alarm Group Edit Form
    RPA.Desktop.Wait For Element    alias:FXE_main_points_tab_alarmgroup_upload_btn    timeout=25    # Alarmgroup edit button locator.

    RPA.Desktop.Move Mouse    alias:FXE_main_points_tab_alarmgroup_upload_btn    # Alarmgroup edit button locator.
    RPA.Desktop.Click With Offset    x=-25    y=0    action=click    # Alarmgroup EDIT FORM button

    RPA.Desktop.Wait For Element    alias:FXE_main_points_tab_alarmgroup_edit_form    timeout=25    # Alarmgroup edit form locator. Dims: 696*593 center: 348*297
    RPA.Desktop.Move Mouse    alias:FXE_main_points_tab_alarmgroup_edit_form    # Alarmgroup edit form locator.
    RPA.Desktop.Click With Offset    x=-306    y=-203    action=click    # Alarm groups panel, Name column, 1st line. Alarmgroup EDIT FORM
    RPA.Desktop.Press Keys    F2
    RPA.Desktop.Type Text    ALARM_A    # Alarm group name

    RPA.Desktop.Move Mouse    alias:FXE_main_points_tab_alarmgroup_edit_form    # Alarmgroup edit form locator.
    RPA.Desktop.Click With Offset    x=112    y=-188    action=click    # Time schedule drop-down Alarmgroup EDIT FORM
    RPA.Desktop.Press Keys    down    # Select time schedule

    RPA.Desktop.Move Mouse    alias:FXE_main_points_tab_alarmgroup_edit_form    # Alarmgroup edit form locator.
    RPA.Desktop.Click With Offset    x=112    y=-188    action=click    # Time schedule drop-down Alarmgroup EDIT FORM
    RPA.Desktop.Press Keys    down    # Select time schedule

