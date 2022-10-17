* Settings *
Documentation   Keywords file for tests at /products endpoint
Resource        ../support/base.robot

* Keywords *

GET Products Categories
    ${response}             Get On Session      fakestore       /products/Categories    expected_status=any
    Log To Console          ${response.content}
    Set Global Variable     ${response}

GET Category: ${category}
    ${response}             Get On Session      fakestore       /products/category/${category}      expected_status=any
    Log To Console          ${response.content}
    Set Global Variable     ${response}

POST Endpoint /products
    ${json}                 Import Estatic JSON     products.json
    ${payload}              Set Variable            ${json["valid_product"]}
    ${response}             Post On Session         fakestore       /products       json=${payload}         expected_status=any
    Set Global Variable     ${response}

POST Errors Endpoint /products
    [Arguments]             ${error}
    ${json}                 Import Estatic JSON     products.json
    ${payload}              Set Variable            ${json["${error}"]}
    ${response}             Post On Session         fakestore       /products       json=${payload}         expected_status=any
    Set Global Variable     ${response}

PUT Update Endpoint /products
    ${json}                 Import Estatic JSON     products.json
    ${payload}              Set Variable            ${json["valid_product"]}
    ${response}             Put On Session         fakestore       /products/1       json=${payload}         expected_status=any
    Set Global Variable     ${response}

PUT Create Endpoint /products
    ${json}                 Import Estatic JSON     products.json
    ${payload}              Set Variable            ${json["valid_product"]}
    ${response}             Put On Session         fakestore       /products       json=${payload}         expected_status=any
    Set Global Variable     ${response}