* Settings *
Documentation   Keywords file for tests at /login endpoint
Resource        ../support/base.robot

* Keywords *

POST Endpoint /login
    ${response}            POST On Session        fakestore    url=/auth/login    json=${payload}    expected_status=any
    Log To Console          \n${response.content}\n
    Set Global Variable    ${response}

PUT Endpoint /login
    ${response}            PUT On Session        fakestore    url=/auth/login    json=${payload}    expected_status=any
    Log To Console          \n${response.content}\n
    Set Global Variable    ${response}

PATCH Endpoint /login
    ${response}            PATCH On Session        fakestore    url=/auth/login    json=${payload}    expected_status=any
    Log To Console          \n${response.content}\n
    Set Global Variable    ${response}