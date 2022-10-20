* Settings *
Documentation   Keywords file for tests at /carts endpoint
Resource        ../support/base.robot

* Keywords *

GET Cart By Date
    [Arguments]            ${start}          ${end}
    Log To Console         \nGiven Start Date: ${start}\nGiven End Date: ${end}
    ${response}            GET On Session    fakestore    url=/carts/startdate=${start}&enddate=${end}
    Log To Console         \n${response.content}\n
    Set Global Variable    ${response}

GET User Cart
    [Arguments]            ${id_user}
    Log To Console         \nGiven UserId: ${id_user}
    ${response}            GET On Session    fakestore    url=/carts/user/${id_user}    expected_status=any
    Log To Console         \nReturned Cart:\n${response.content}\n
    Set Global Variable    ${response}

POST Endpoint /carts
    ${response}            POST On Session    fakestore    /carts    json=${payload}    expected_status=any
    Log To Console         \n${response.content}\n
    Set Global Variable    ${response}

PUT New Endpoint /carts
    ${response}            PUT On Session    fakestore    /carts/98    json=${payload}    expected_status=any
    Log To Console          \n${response.content}\n
    Set Global Variable    ${response}

PUT Update Endpoint /carts
    ${response}            PUT On Session    fakestore    /carts/3    json=${payload}    expected_status=any
    Log To Console          \n${response.content}\n
    Set Global Variable    ${response}

PUT Update Invalid Endpoint /carts
    ${response}            PUT On Session    fakestore    /carts    json=${payload}    expected_status=any
    Log To Console          \n${response.content}\n
    Set Global Variable    ${response}

PATCH New Endpoint /carts
    ${response}            PATCH On Session    fakestore    /carts/98    json=${payload}    expected_status=any
    Log To Console          \n${response.content}\n
    Set Global Variable    ${response}

PATCH Update Endpoint /carts
    ${response}            PATCH On Session    fakestore    /carts/3    json=${payload}    expected_status=any
    Log To Console          \n${response.content}\n
    Set Global Variable    ${response}

PATCH Update Invalid Endpoint /carts
    ${response}            PATCH On Session    fakestore    /carts    json=${payload}    expected_status=any
    Log To Console          \n${response.content}\n
    Set Global Variable    ${response}