*** Settings ***
Library    AppiumLibrary
*** Variables ***
${REMOTE_URL}     http://127.0.0.1:4723/wd/hub
${PLATFORM_NAME}    Android
${PLATFORM_VERSION}    10.0
${DEVICE_NAME}    24cc886c720d7ece
${Activity_NAME}        com.sahibinden/.ui.supplementary.SplashScreenActivity
${PACKAGE_NAME}     com.sahibinden
# to learn package name and activity name
#adb shell dumpsys window | grep -E 'mCurrentFocus'
*** Test Cases ***
First Test cases
      Open Application   ${REMOTE_URL}  platformName=${PLATFORM_NAME}   platformVersion=${PLATFORM_VERSION} deviceName=${DEVICE_NAME}   newCommandTimeout=2500  appActivity=${Activity_NAME}    appPackage=${PACKAGE_NAME}



