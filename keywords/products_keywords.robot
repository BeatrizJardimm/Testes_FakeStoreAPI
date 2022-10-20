* Settings *
Documentation   Keywords file for tests at /products endpoint
Resource        ../support/base.robot

* Keywords *

GET Products Categories
    ${response}             Get On Session      fakestore       /products/categories    expected_status=any
    Log To Console          \n${response.content}\n
    Set Global Variable     ${response}

GET Category: ${category}
    Log To Console          \nGiven Category: ${category}
    ${response}             Get On Session      fakestore       /products/category/${category}      expected_status=any
    Log To Console          \nReturned Objects:\n${response.content}\n
    Set Global Variable     ${response}

POST Endpoint /products
    ${response}            Post On Session         fakestore       /products       json=${payload}         expected_status=any
    Log To Console         \n${response.content}\n
    Set Global Variable    ${response}

PUT Update Endpoint /products
    ${response}             Put On Session         fakestore       /products/13       json=${payload}         expected_status=any
    Log To Console          \n${response.content}\n
    Set Global Variable     ${response}

PUT Update Invalid Endpoint /products
    ${response}             Put On Session         fakestore       /products          json=${payload}         expected_status=any
    Log To Console          \n${response.content}\n
    Set Global Variable     ${response}

PUT New Endpoint /products
    ${response}             Put On Session         fakestore       /products/84       json=${payload}         expected_status=any
    Set Global Variable     ${response}
    Log To Console          \n${response.content}\nIt Creates a new product at the given id

PATCH Update Endpoint /products
    ${response}             Patch On Session         fakestore       /products/13       json=${payload}         expected_status=any
    Log To Console          \n${response.content}\n
    Set Global Variable     ${response}

PATCH Update Invalid Endpoint /products
    ${response}             Patch On Session         fakestore       /products          json=${payload}         expected_status=any
    Log To Console          \n${response.content}\n
    Set Global Variable     ${response}

PATCH New Endpoint /products
    ${response}             Patch On Session         fakestore       /products/84       json=${payload}         expected_status=any
    Set Global Variable     ${response}
    Log To Console          \n${response.content}\nIt Creates a new product at the given id