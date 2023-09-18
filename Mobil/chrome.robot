*** Settings ***
Library    AppiumLibrary
*** Variables ***
${REMOTE_URL}     http://127.0.0.1:4723/wd/hub
${PLATFORM_NAME}    Android
${PLATFORM_VERSION}    11.0
${DEVICE_NAME}    emulator-5554
${Activity_NAME}        chat21.android.demo.SplashActivity
${PACKAGE_NAME}     chat21.android.demo

*** Test Cases ***
First Test cases
      Open Application   ${REMOTE_URL}  platformName=${PLATFORM_NAME}   platformVersion=${PLATFORM_VERSION} deviceName=${DEVICE_NAME}   newCommandTimeout=2500  appActivity=${Activity_NAME}    appPackage=${PACKAGE_NAME}
      sleep    4
      click element    xpath=//*[@text='CONTINUE']
      sleep    2
      click element    xpath=//*[@text='OK']
      input text    id=email    zoomokul@gmail.com
      input text    id=password    12345
      click element    id=login

