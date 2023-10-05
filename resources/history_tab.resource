*** Settings ***
Documentation       Common resource file             

                    # Win+D Display the desktop.
                    # Win+M Minimize all windows.
                    # Win+Shift+M Restore minimized windows to the desktop.
                    # Win+↑ Maximize the window.
                    # Win+← Maximize the window to the left side of the screen.
                    # Win+→ Maximize the window to the right side of the screen.
                    # Win+↓ Minimize the window.
                    # Win+Home Minimize all but the active window.
                    # Win+Shift+↑ Stretch the window to the top and bottom of the screen.

Library             RPA.Desktop
Library             RPA.Windows
Library             OperatingSystem
Library             DateTime
Library             RPA.RobotLogListener
Library             RPA.Excel.Application
Library             RPA.Dialogs
Library             RPA.JavaAccessBridge

Resource            resources/project_tab.resource
Resource            resources/common.resource


*** Variables ***

${current_date}=    Get Current Date    result_format=%d.%m.%y
${button}    


*** Keywords ***

History Tab Select
                
    RPA.Desktop.Wait For Element    alias:FXE_main_history_tab    timeout=10
    RPA.Desktop.Click    alias:FXE_main_history_tab
    

History Tab New History Group Create Agrument-1
    [Arguments]    ${group_name}

    RPA.Desktop.Wait For Element    alias:FXE_main_modules_tab_AI_icon    timeout=10    # AI point icon
    RPA.Desktop.Click With Offset    alias:FXE_main_modules_tab_AI_icon    x=0    y=0    action=click    # AI point select
    
    RPA.Desktop.Wait For Element    alias:FXE_main_history_tab_toolbar_history_btns    timeout=10    # History Toolbar buttons Dims:  150*47
    RPA.Desktop.Click With Offset    alias:FXE_main_history_tab_toolbar_history_btns    x=-50    y=0    action=click    # Add group button
    
    RPA.Desktop.Wait For Element    alias:FXE_main_history_tab_new_group_form    timeout=10    # New group form
    RPA.Desktop.Type Text    ${group_name}
    RPA.Desktop.Click    alias:FXE_main_OK_noicon_form_btn
    
    

    
    Sleep    3s

