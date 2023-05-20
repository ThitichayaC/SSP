*** Setting ***
Resource    ${CURDIR}/../../../resources/imports.robot
Variables   ${CURDIR}/../../../resources/${WEB}/translation_${language}.yaml
Variables   ${CURDIR}/../../../resources/${WEB}/testdata/${ENV}/test_data.yaml
Resource    ${CURDIR}/../../../resources/${WEB}/${WEB}_Locators.robot
Resource    ${CURDIR}/../../../keywords/web/page/search_result_page.robot

*** Variables ***
${th}    th
${en}    en

*** Keywords ***
Open SSP website
     [Arguments]    ${language}
    Run Keyword If    '${language}'=='${th}'    SeleniumLibrary.Open Browser    ${customer_host_th}   ${browserName}
    ...    ELSE    SeleniumLibrary.Open Browser    ${customer_host_en}   ${browserName}
    Maximize Browser Window