* Settings *
Documentation   Keywords file for tests at /users endpoint
Resource        ../support/base.robot

* Keywords *

POST Endpoint /users
    ${response}             POST On Session        fakestore        /users        json=${payload}        expected_status=any
    Log To Console          \n${response.content}\n
    Set Global Variable     ${response}

PUT Update Endpoint /users
    ${response}             PUT On Session        fakestore        /users/6        json=${payload}        expected_status=any
    Log To Console          \n${response.content}\n
    Set Global Variable     ${response}

PUT New Endpoint /users
    ${response}            PUT On Session        fakestore        /users/98        json=${payload}        expected_status=any
    Log To Console          \n${response.content}\n
    Set Global Variable    ${response}

PUT Update Invalid Endpoint /users
    ${response}            PUT On Session        fakestore        /users        json=${payload}        expected_status=any
    Log To Console          \n${response.content}\n
    Set Global Variable    ${response}

PATCH Update Endpoint /users
    ${response}            PATCH On Session       fakestore        /users/6        json=${payload}        expected_status=any
    Log To Console          \n${response.content}\n
    Set Global Variable    ${response}

PATCH New Endpoint /users
    ${response}            PATCH On Session        fakestore        /users/68        json=${payload}        expected_status=any
    Log To Console          \n${response.content}\n
    Set Global Variable    ${response}

PATCH Update Invalid Endpoint /users
    ${response}            PATCH On Session        fakestore        /users        json=${payload}        expected_status=any
    Log To Console          \n${response.content}\n
    Set Global Variable    ${response}