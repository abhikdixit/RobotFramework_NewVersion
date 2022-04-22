*** Settings ***
Library    DocTest.VisualTest

*** Test Cases ***
Compare two Images and highlight differences
    compare images      D:\\F Drive\\RobotFramework_NewVersion\\Image\\File1.png     D:\\F Drive\\RobotFramework_NewVersion\\Image\\File2.png
