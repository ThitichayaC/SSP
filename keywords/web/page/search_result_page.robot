*** Setting ***
Resource    ${CURDIR}/../../../keywords/web/page/main_page.robot

*** Variables ***

*** Keywords ***
Click Search Bar on Header
     SeleniumLibrary.Wait Until Element Is Visible    ${dictSearchResultPage}[txt_searchbar]
     SeleniumLibrary.Click Element    ${dictSearchResultPage}[txt_searchbar]

Input Keyword into Search Bar
    [Arguments]     ${keyword}
     SeleniumLibrary.Input Text        ${dictSearchResultPage}[txt_searchbar]    ${keyword}

Search Result Should Be Display Correctly
    [Arguments]     ${product_name}
    SeleniumLibrary.Element Should Contain    ${dictSearchResultPage}[lbl_product_name]    ${product_name}