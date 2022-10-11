*** Settings ***
Resource    ../Resources/Demoblaze_keywords_Login.robot
Test Setup       Open Browser With Google Chrome
#Test Teardown    Close Google Chrome Browser

*** Test Cases ***

#Standar User Login
  #    Input Data Standar User Login
  #    Click Login Button
  #    Click Burger Menu
  #    Click Logout

#Locked Out User Login
#    Input Data locked Out User Login
#    Click Login Button
#    Error Should be visible
    

#Problem User Login
  #    Input Data Problem User Login
  #    Click Login Button
  #    Click Burger Menu
  #    Click Logout

Performance Glitch User Login
    Input Data Performance Glitch User Login
    Click Login Button
    Click Burger Menu
    Click Logout

#Negative Wrong Username
 #   Input Wrong Username Login
 #   Click Login Button
 #   Click Burger Menu
 #   Click Logout

#Negative Wrong Password
#   Input Wrong Password Login
#   Click Login Button
#   Click Burger Menu
#   Click Logout
