* Settings *
Documentation   Test Cases file for testing at /login endpoint
Resource        ../keywords/login_keywords.robot
Suite Setup     Initialize Session

* Test Cases * 

# ------------------------------- POST -------------------------------

Cenary: POST Login User 200
    [tags]        POST200
    Pick A Static Object    login.json        valid_login
    POST Endpoint /login
    Validate Status Code "200"

#Cenary: POST Login User Without UserName 400
#    [tags]        POST400.1
#    Pick A Static Object    login.json        without_username
#    POST Endpoint /login
#    Validate Status Code "400"

#Cenary: POST Login User Without Password 400
#    [tags]        POST400.2
#    Pick A Static Object    login.json        without_password
#    POST Endpoint /login
#    Validate Status Code "400"

Cenary: POST Login User With Invalid UserName 401
    [tags]        POST401.1
    Pick A Static Object    login.json        invalid_username
    POST Endpoint /login
    Validate Status Code "401"

Cenary: POST Login User With Wrong Password 401
    [tags]        POST401.2
    Pick A Static Object    login.json        invalid_password
    POST Endpoint /login
    Validate Status Code "401"

# ------------------------------- OTHERS -------------------------------

Cenary: GET Logins 404
    [tags]        GET404
    GET Endpoint         /login
    Validate Status Code "404"

Cenary: PUT Logins 404
    [tags]        PUT404
    Pick A Static Object    login.json        valid_login
    PUT Endpoint /login
    Validate Status Code "404"

Cenary: PATCH Logins 404
    [tags]        PATCH404
    Pick A Static Object    login.json        valid_login
    PATCH Endpoint /login
    Validate Status Code "404"

Cenary: DELETE Logins 404
    [tags]        DELETE404
    DELETE Endpoint     /login    1
    Validate Status Code "404"