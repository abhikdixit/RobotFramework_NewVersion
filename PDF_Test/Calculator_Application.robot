*** Settings ***
Documentation    Suite description
Library          RPA.Desktop.Windows
Suite Teardown   Close all applications

*** Test Cases ***
Open Calculator using run dialog
    ${result}=              Open using run dialog    calc.exe   Calculator
    ${result}=              Get Window Elements
    Send Keys               5*2=
    ${result}=              Get element             partial name:Display is
    Log Many                ${result}
    ${result}=              Get element rich text   id:CalculatorResults
    Should Be Equal As Strings  ${result}  Display is 10
    ${result}=              Is Element Visible      CalculatorResults