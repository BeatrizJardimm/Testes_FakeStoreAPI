* Settings *
Documentation   Keywords file for tests at /carts endpoint
Resource        ../support/base.robot

* Keywords *

GET Cart By Date
    [Arguments]            ${start}          ${end}
    ${response}            GET On Session    fakestore    url=/carts/startdate=${start}&enddate=${end}
GET User Cart
    [Arguments]            ${id_user}
    ${response}            GET On Session    fakestore    url=/carts/user/${id_user}    expected_status=any
    Set Global Variable    ${response}