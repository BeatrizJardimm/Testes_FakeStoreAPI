* Settings *
Documentation       Keywords that are being used in all test files
Library             RequestsLibrary
Library             OperatingSystem

* Keywords *

Validate Status Code "${statuscode}"
    Should Be True          ${response.status_code} == ${statuscode}
    Log To Console          \nStatus Code: ${response.status_code}\n

Import Estatic JSON
    [Arguments]             ${file_name}
    ${file}                 Get File        ${EXECDIR}/../support/fixtures/static/${file_name}
    &{data}                 Evaluate        json.loads('''${file}''')    json
    [return]                ${data}

Pick A Static Object
    [Arguments]             ${file_name}            ${object}
    ${json}                 Import Estatic JSON     ${file_name}
    ${payload}              Set Variable            ${json["${object}"]}
    Set Global Variable     ${payload}

GET Endpoint
    [Arguments]             ${endpoint}
    ${response}             GET On Session      fakestore       ${endpoint}     expected_status=any
    Log To Console          \n${response.content}\n
    Set Global Variable     ${response}

GET Id
    [Arguments]             ${endpoint}     ${id}
    Log To Console          \nGiven Id: ${id}
    ${response}             GET On Session      fakestore       ${endpoint}/${id}   expected_status=any
    Log To Console          \nReturned Object:\n${response.content}\n
    Set Global Variable     ${response}

GET Quantity
    [Arguments]             ${endpoint}         ${quantity}
    Log To Console          \nGiven Limit: ${quantity}
    ${response}             GET On Session      fakestore       url=${endpoint}?limit=${quantity}   expected_status=any
    Log To Console          \nReturned Objects:\n${response.content}\n
    Set Global Variable     ${response}

GET Sort
    [Arguments]             ${endpoint}
    ${response}             GET On Session      fakestore       url=${endpoint}?sort=desc   expected_status=any
    Log To Console          \n${response.content}\n
    Set Global Variable     ${response}

GET Invalid Sort
    [Arguments]             ${endpoint}
    ${response}             GET On Session      fakestore       url=${endpoint}?sort=invalid    expected_status=any
    Log To Console          \n${response.content}\n
    Set Global Variable     ${response}

DELETE Endpoint
    [Arguments]            ${endpoint}        ${id}
    ${response}            DELETE On Session        fakestore        url=${endpoint}/${id}        expected_status=any
    Log To Console         \n${response.content}\n
    Set Global Variable    ${response}