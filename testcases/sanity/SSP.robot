*** Setting ***
Resource    ${CURDIR}/../../keywords/web/page/main_page.robot
Test Teardown    SeleniumLibrary.Close All Browsers

*** Variables ***

*** Keyword ***

*** Test Cases ***
SSP_002 Search product by product name success
	[Documentation]    To verify that a user can search product by product name success
	[Tags]    ssp
	main_page.Open SSP website    ${language}
	search_result_page.Click Search Bar on Header
	search_result_page.Input Keyword into Search Bar    ${keyword}
	search_result_page.Search Result Should Be Display Correctly    ${product_name}