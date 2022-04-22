*** Settings ***
Library    DocTest.PdfTest

*** Test Cases ***
This text exists in the PDF File
    @{strings}=    Create List    THE TEST SHIPPER    TEST CONSIGNEE
    PDF Should Contain Strings    ${strings}    robotframework-doctestlibrary-main/testdata/sample.pdf

This text does NOT exist in the PDF File
    @{strings}=    Create List    THE TEST SHIPPER    THIS STRING DOES NOT EXIST IN THIS DOJO
    Run Keyword And Expect Error    Some expected texts were not found in document    PDF Should Contain Strings    ${strings}    robotframework-doctestlibrary-main/testdata/sample.pdf

Compare two equal PDF Files without signature
    Compare Pdf Documents    robotframework-doctestlibrary-main/testdata/sample.pdf    robotframework-doctestlibrary-main/testdata/sample.pdf

Compare two equal PDF Files with signature
    Compare Pdf Documents    robotframework-doctestlibrary-main/testdata/sample06.pdf   robotframework-doctestlibrary-main/testdata/sample06.pdf

Compare two different PDF Files with moved textblock and only check text content
    Compare Pdf Documents    robotframework-doctestlibrary-main/testdata/sample_1_page.pdf    robotframework-doctestlibrary-main/testdata/sample_1_page_moved.pdf    compare=text

Compare two different PDF Files
    Run Keyword And Expect Error    The compared PDF Document Data is different.    Compare Pdf Documents    robotframework-doctestlibrary-main/testdata/sample_1_page.pdf    robotframework-doctestlibrary-main/testdata/sample_1_page_changed.pdf