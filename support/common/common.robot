* Settings *
Documentation       Keywords that are being used in all test files
Library             RequestsLibrary
Library             OperatingSystem

* Keywords *

Validate Status Code "${statuscode}"
    Should Be True          ${response.status_code} == ${statuscode}
    Log To Console          Status Code: ${response.status_code}\n

Import Estatic JSON
    [Arguments]             ${file_name}
    ${file}                 Get File        ${EXECDIR}/../support/fixtures/static/${file_name}
    &{data}                 Evaluate        json.loads('''${file}''')    json
    [return]                ${data}

GET Endpoint
    [Arguments]             ${endpoint}
    ${response}             GET On Session      fakestore       ${endpoint}     expected_status=any
    Set Global Variable     ${response}

GET Id
    [Arguments]             ${endpoint}     ${id}
    ${response}             GET On Session      fakestore       ${endpoint}/${id}   expected_status=any
    Log To Console          \n\n${response.content}
    Set Global Variable     ${response}

GET Quantity
    [Arguments]             ${endpoint}         ${quantity}
    ${response}             GET On Session      fakestore       url=${endpoint}?limit=${quantity}   expected_status=any
    Set Global Variable     ${response}

GET Sort
    [Arguments]             ${endpoint}
    ${response}             GET On Session      fakestore       url=${endpoint}?sort=desc   expected_status=any
    Set Global Variable     ${response}

GET Invalid Sort
    [Arguments]             ${endpoint}
    ${response}             GET On Session      fakestore       url=${endpoint}?sort=invalid    expected_status=any
    Set Global Variable     ${response}
