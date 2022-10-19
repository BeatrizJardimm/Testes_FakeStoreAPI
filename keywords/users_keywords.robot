* Settings *
Documentation   Keywords file for tests at /users endpoint
Resource        ../support/base.robot

* Keywords *

Pick A Static User
    [Arguments]             ${object}
    ${json}                 Import Estatic JSON     users.json
    ${payload}              Set Variable            ${json["${object}"]}
    Set Global Variable     ${payload}

POST Endpoint /users
    ${response}             POST On Session        fakestore        /users        json=${payload}        expected_status=any
    Set Global Variable     ${response}

PUT Update Endpoint /users
    ${response}             PUT On Session        fakestore        /users/6        json=${payload}        expected_status=any
    Set Global Variable     ${response}

PUT New Endpoint /users
    ${response}            PUT On Session        fakestore        /users/98        json=${payload}        expected_status=any
    Set Global Variable    ${response}

PATCH Update Endpoint /users
    ${response}            PATCH On Session       fakestore        /users/6        json=${payload}        expected_status=any
    Set Global Variable    ${response}

PATCH New Endpoint /users
    ${response}            PATCH On Session        fakestore        /users/68        json=${payload}        expected_status=any
    Set Global Variable    ${response}

DELETE Endpoint /users
    [Arguments]            ${id}
    ${response}            DELETE On Session        fakestore        url=/users/${id}        expected_status=any
    Set Global Variable    ${response}