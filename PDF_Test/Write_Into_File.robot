*** Settings ***
Library  OperatingSystem
Library  String

*** Test Cases ***
write_variable_in_file
    ${Username} =  Generate Random String  1  abc
    log to console   ${Username}
    run keyword if  '${Username}' == 'a'   write_variable_in_file  ${Username}


*** Keywords ***
write_variable_in_file
  [Arguments]  ${variable}
  Create File  testdata/file_with_variable.txt  ${variable}