* Settings *
Documentation   File that summons all resources used by the keywords files
Library         RequestsLibrary
Library         Collections
Library         OperatingSystem
Resource        ./common/common.robot
Resource        ./variables/fakestore_variables.robot
Resource        ../keywords/carts_keywords.robot
Resource        ../keywords/login_keywords.robot
Resource        ../keywords/products_keywords.robot
Resource        ../keywords/users_keywords.robot

* Keywords *

Initialize Session
    Create Session      fakestore       ${BASE_URI}