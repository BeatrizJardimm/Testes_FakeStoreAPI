* Settings *
Documentation   Keywords file for tests at /products endpoint
Resource        ../support/base.robot

* Keywords *

Pick A Static Product
    [Arguments]             ${object}
    ${json}                 Import Estatic JSON     products.json
    ${payload}              Set Variable            ${json["${object}"]}
    Set Global Variable     ${payload}

GET Products Categories
    ${response}             Get On Session      fakestore       /products/Categories    expected_status=any
    Log To Console          \n${response.content}\n
    Set Global Variable     ${response}

GET Category: ${category}
    ${response}             Get On Session      fakestore       /products/category/${category}      expected_status=any
    Log To Console          \n${response.content}\n
    Set Global Variable     ${response}

POST Endpoint /products
    ${response}             Post On Session         fakestore       /products       json=${payload}         expected_status=any
    Set Global Variable     ${response}

PUT Endpoint /products
    ${response}             Put On Session         fakestore       /products/13       json=${payload}         expected_status=any
    Set Global Variable     ${response}

PUT Create Endpoint /products
    ${response}             Put On Session         fakestore       /products          json=${payload}         expected_status=any
    Set Global Variable     ${response}

PUT Non-Existent Endpoint /products
    ${response}             Put On Session         fakestore       /products/84       json=${payload}         expected_status=any
    Set Global Variable     ${response}
    Log To Console          \n${response.content}\n"It Creates a new product at the given id"

PATCH Endpoint /products
    ${response}             Patch On Session         fakestore       /products/13       json=${payload}         expected_status=any
    Set Global Variable     ${response}

PATCH Create Endpoint /products
    ${response}             Patch On Session         fakestore       /products          json=${payload}         expected_status=any
    Set Global Variable     ${response}

PATCH Non-Existent Endpoint /products
    ${response}             Patch On Session         fakestore       /products/84       json=${payload}         expected_status=any
    Set Global Variable     ${response}
    Log To Console          \n${response.content}\n"It Creates a new product at the given id"

DELETE Endpoint /products
    [Arguments]            ${id}
    ${response}            Delete On Session    fakestore    /products/${id}    expected_status=any
    Set Global Variable    ${response}