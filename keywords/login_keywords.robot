* Settings *
Documentation   Keywords file for tests at /login endpoint
Resource        ../support/base.robot

* Keywords *

Pick A Static Login
    [Arguments]             ${object}
    ${json}                 Import Estatic JSON     login.json
    ${payload}              Set Variable            ${json["${object}"]}
    Set Global Variable     ${payload}

POST Endpoint /login
    ${response}            POST On Session        fakestore    url=/auth/login    json=${payload}    expected_status=any
    Log To Console         ${response.content}
    Set Global Variable    ${response}

GET Endpoint /login
    ${response}            GET On Session        fakestore    url=/auth/login    expected_status=any
    Log To Console         ${response.content}
    Set Global Variable    ${response}

PUT Endpoint /login
    ${response}            PUT On Session        fakestore    url=/auth/login    json=${payload}    expected_status=any
    Log To Console         ${response.content}
    Set Global Variable    ${response}

PATCH Endpoint /login
    ${response}            PATCH On Session        fakestore    url=/auth/login    json=${payload}    expected_status=any
    Log To Console         ${response.content}
    Set Global Variable    ${response}

DELETE Endpoint /login
    ${response}            DELETE On Session        fakestore    url=/auth/login    json=${payload}    expected_status=any
    Log To Console         ${response.content}
    Set Global Variable    ${response}