*** Settings ***
Library  AppiumLibrary
*** Test Cases ***
User should be able to launch flipkart application
    [Tags]  01_tc
    Launch the flipkart application
    Select Language
    Search Electronic device
    Add to cart
*** Keywords ***
Launch the flipkart application
    Open Application  ${server_nm}  platformName=${pf_name}  deviceName=${device_name}  appPackage=${app_package}  appActivity=${app_activity}  automationName=${automation_name}
    Wait Until Page Contains  Choose  timeout=20s
Select Language
    Swipe By Percent  50  80  50  20
    Wait Until Page Contains  English  timeout=30s
    Click Text  ${text1}
    Click Text  ${text2}
    Wait Until Page Contains  best  timeout=60s
    Click Element  id=${close_btn}
Search Electronic device
    Wait Until Page Contains  Search for Products  timeout=70s
    Click Text  ${text3}
    Input Text  id=${search_bar}  Mobiles
    Wait Until Page Contains  Mobiles  timeout=30s
    Click Element  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/androidx.drawerlayout.widget.DrawerLayout/android.view.ViewGroup/android.widget.FrameLayout/android.widget.LinearLayout/androidx.recyclerview.widget.RecyclerView/android.widget.RelativeLayout[1]
    Wait Until Page Contains  CONTINUE  timeout=30s
    Click Text  ${text4}
    Wait Until Page Contains  ALLOW  timeout=60s
    Click Text  ${text5}
    Wait Until Page Contains  Compare  timeout=60s
    Swipe By Percent  50  80  50  20
    Wait Until Page Contains  POCO  timeout=60s
    #Click Text  ${mobile_2}
    #Click Text  ${mobile_3}
    Click Text  ${mobile_1}
Add to cart
    Wait Until Page Contains  ADD TO CART  timeout=60s
    Click Text  ${text6}
    Wait Until Page Contains  GO TO CART  timeout=60s
    Click Text  ${text7}
*** Variables ***
${server_nm} =  http://localhost:4723/wd/hub
${pf_name} =  Android
${device_name} =  emulator-5554
${app_package} =  com.flipkart.android
${app_activity} =  com.flipkart.android.SplashActivity
${automation_name} =  Uiautomator2
${text1} =  English
${text2} =  CONTINUE
${close_btn} =  com.flipkart.android:id/custom_back_icon
${text3} =  Search for Products, Brands and More
${search_bar} =  com.flipkart.android:id/search_autoCompleteTextView
${text4} =  CONTINUE
${text5} =  ALLOW
${mobile_1} =  POCO C3 (Arctic Blue, 64 GB)
#${mobile_2} =  POCO M3 (Cool Blue, 64 GB)
#${mobile_3} =  realme C20 (Cool Grey, 32 GB)
${text6} =  ADD TO CART
${text7} =  GO TO CART
