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

    