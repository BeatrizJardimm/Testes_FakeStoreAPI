* Settings *
Documentation   Keywords file for tests at /carts endpoint
Resource        ../support/base.robot

* Keywords *

Pick A Static Cart
    [Arguments]             ${object}
    ${json}                 Import Estatic JSON     carts.json
    ${payload}              Set Variable            ${json["${object}"]}
    Set Global Variable     ${payload}

GET Cart By Date
    [Arguments]            ${start}          ${end}
    ${response}            GET On Session    fakestore    url=/carts/startdate=${start}&enddate=${end}
GET User Cart
    [Arguments]            ${id_user}
    ${response}            GET On Session    fakestore    url=/carts/user/${id_user}    expected_status=any
    Set Global Variable    ${response}

POST Endpoint /carts
    ${response}            POST On Session    fakestore    /carts    json=${payload}    expected_status=any
    Set Global Variable    ${response}

PUT New Endpoint /carts
    ${response}            PUT On Session    fakestore    /carts/98    json=${payload}    expected_status=any
    Log To Console         ${response.content}
    Set Global Variable    ${response}

PUT Update Endpoint /carts
    ${response}            PUT On Session    fakestore    /carts/3    json=${payload}    expected_status=any
    Log To Console         ${response.content}
    Set Global Variable    ${response}

PUT Update Invalid Endpoint /carts
    ${response}            PUT On Session    fakestore    /carts    json=${payload}    expected_status=any
    Log To Console         ${response.content}
    Set Global Variable    ${response}

PATCH New Endpoint /carts
    ${response}            PATCH On Session    fakestore    /carts/98    json=${payload}    expected_status=any
    Log To Console         ${response.content}
    Set Global Variable    ${response}

PATCH Update Endpoint /carts
    ${response}            PATCH On Session    fakestore    /carts/3    json=${payload}    expected_status=any
    Log To Console         ${response.content}
    Set Global Variable    ${response}

PATCH Update Invalid Endpoint /carts
    ${response}            PATCH On Session    fakestore    /carts    json=${payload}    expected_status=any
    Log To Console         ${response.content}
    Set Global Variable    ${response}

DELETE Endpoint /carts
    [Arguments]            ${id}
    ${response}            DELETE On Session    fakestore    /carts/${id}    expected_status=any
    Log To Console         ${response}
    Set Global Variable    ${response}