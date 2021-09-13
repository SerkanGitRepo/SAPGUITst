*** Settings ***
Library    SapGuiLibrary
Library    AppiumLibrary
Library    SeleniumLibrary
*** Variables ***
${messages}       
*** Test Cases ***
GUITesting
    Log    HelloWorld
    Open Application    http://127.0.0.1:4723   platformName=Windows    deviceName=WindowsPC    app=C:\\Program Files (x86)\\SAP\\FrontEnd\\SapGui\\saplogon.exe
    Connect To Session
    Open Connection    PSQ Vestel ERP Kalite
    SapGuiLibrary.Input Text    /app/con[0]/ses[0]/wnd[0]/usr/txtRSYST-BNAME    serkanaks
    SapGuiLibrary.Input Password    /app/con[0]/ses[0]/wnd[0]/usr/pwdRSYST-BCODE    Zorlu.5357
    SapGuiLibrary.Input Text    /app/con[0]/ses[0]/wnd[0]/usr/txtRSYST-LANGU    TR
    SapGuiLibrary.Click Element    /app/con[0]/ses[0]/wnd[0]/tbar[0]/btn[0]
    
    Run Transaction    se16
    SapGuiLibrary.Input Text    /app/con[0]/ses[0]/wnd[0]/usr/ctxtDATABROWSE-TABLENAME    zfi_gns_t1000
    SapGuiLibrary.Click Element    /app/con[0]/ses[0]/wnd[0]/tbar[0]/btn[0]
    SapGuiLibrary.Input Text    /app/con[0]/ses[0]/wnd[0]/usr/ctxtI4-LOW    09092021
    SapGuiLibrary.Input Text    /app/con[0]/ses[0]/wnd[0]/usr/txtI30-LOW    0064
    SapGuiLibrary.Click Element    /app/con[0]/ses[0]/wnd[0]/tbar[1]/btn[8]
    
    SapGuiLibrary.Click Element    /app/con[0]/ses[0]/wnd[0]/tbar[0]/btn[15]
    SapGuiLibrary.Input Text    /app/con[0]/ses[0]/wnd[0]/usr/ctxtI4-LOW    15092021
    SapGuiLibrary.Click Element    /app/con[0]/ses[0]/wnd[0]/tbar[1]/btn[8]
    ${messages}    SapGuiLibrary.Get Value    /app/con[0]/ses[0]/wnd[0]/sbar/pane[0]
    
    SapGuiLibrary.Click Element    /app/con[0]/ses[0]/wnd[0]/tbar[0]/btn[15]
    
    
    