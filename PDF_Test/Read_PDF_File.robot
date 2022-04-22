*** Settings ***
#Library    DocTest.VisualTest
Library    DocTest.PdfTest
*** Test Cases ***
Verify Text in PDF file
   PDF Should Contain Strings        Dummy PDF file     D:\\F Drive\\RobotFramework_NewVersion\\PDF_File\\dummy.pdf