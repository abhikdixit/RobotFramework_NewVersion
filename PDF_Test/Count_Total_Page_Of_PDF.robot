*** Settings ***
Library     RPA.FileSystem
Library     RPA.PDF
Library     String

*** Test Cases ***
Example Keyword
    ${page_count}=    Get Number Of Pages    testdata/sample06.pdf
    Log to console      ${page_count}