* Settings *
Documentation   Test Cases file for testing at /users endpoint
Resource        ../keywords/users_keywords.robot
Suite Setup     Initialize Session

* Test Cases *

# ----------------------- GET -----------------------

Cenary: GET All Users 200
    [tags]        GET200.1
    GET Endpoint     /users
    Validate Status Code "200"

Cenary: GET Specific User 200
    [tags]        GET200.2
    GET Id    /users    1
    Validate Status Code "200"

Cenary: GET Invalid User 404
    [tags]        GET404.1
    GET Id    /users    157
    Validate Status Code "404"

Cenary: GET Limited Quantity Of Users 200
    [tags]        GET200.3
    GET Quantity    /users    5
    Validate Status Code "200"

Cenary: GET Out-Of-Range Quantity Of Users 404
    [tags]        GET404.2
    GET Quantity    /users    292
    Validate Status Code "404"

Cenary: GET Sort Users 200
    [tags]        GET200.4
    GET Sort    /users
    Validate Status Code "200"

Cenary: GET Users Invalid Sort 404
    [tags]        GET404.2
    GET Invalid Sort    /users
    Validate Status Code "404"

# ----------------------- POST -----------------------

Cenary: POST Add New User 201
    [tags]        POST201
    Pick A Static Object    users.json    valid_user
    POST Endpoint /users
    Validate Status Code "201"

Cenary: POST User With Unavaliable Email 400
    [tags]        POST400.1
    Pick A Static Object    users.json    unavaliable_email
    POST Endpoint /users
    Validate Status Code "400"

Cenary: POST User With Existent Username 400
    [tags]        POST400.2
    Pick A Static Object    users.json    unavaliable_username
    POST Endpoint /users
    Validate Status Code "400"

Cenary: POST User With Empty Email 400
    [tags]        POST400.3
    Pick A Static Object    users.json    empty_email
    POST Endpoint /users
    Validate Status Code "400"

Cenary: POST User With Empty Username 400
    [tags]        POST400.4
    Pick A Static Object    users.json    empty_username
    POST Endpoint /users
    Validate Status Code "400"

Cenary: POST User With Empty Password 400
    [tags]        POST400.5
    Pick A Static Object    users.json    empty_password
    POST Endpoint /users
    Validate Status Code "400"

Cenary: POST User With Empty 'name' Parameter 400
    [tags]        POST400.6
    Pick A Static Object    users.json    empty_name
    POST Endpoint /users
    Validate Status Code "400"

Cenary: POST User With Empty 'address' Parameter 400
    [tags]        POST400.7
    Pick A Static Object    users.json    empty_address
    POST Endpoint /users
    Validate Status Code "400"

Cenary: POST User With Empty Phone 400
    [tags]        POST400.8
    Pick A Static Object    users.json    empty_phone
    POST Endpoint /users
    Validate Status Code "400"

# ----------------------- PUT -----------------------

Cenary: PUT Update User 200
    [tags]        PUT200
    Pick A Static Object    users.json    valid_user
    PUT Update Endpoint /users
    Validate Status Code "200"

Cenary: PUT Add New User 201
    [tags]        PUT201
    Pick A Static Object    users.json    valid_user
    PUT New Endpoint /users
    Validate Status Code "201"

Cenary: PUT User Without Id In The Endpoint 404
    [tags]        PUT404
    Pick A Static Object    users.json    valid_user
    PUT Update Invalid Endpoint /users
    Validate Status Code "404"
    
Cenary: PUT Update User With Unavaliable Email 400
    [tags]        PUT400.1
    Pick A Static Object    users.json    unavaliable_email
    PUT Update Endpoint /users
    Validate Status Code "400"
    
Cenary: PUT Update User With Existent Username 400
    [tags]        PUT400.2
    Pick A Static Object    users.json    unavaliable_username
    PUT Update Endpoint /users
    Validate Status Code "400"

Cenary: PUT Update User With Empty Email 400
    [tags]        PUT400.3
    Pick A Static Object    users.json    empty_email
    PUT Update Endpoint /users
    Validate Status Code "400"

Cenary: PUT User With Empty Username 400
    [tags]        POST400.4
    Pick A Static Object    users.json    empty_username
    POST Endpoint /users
    Validate Status Code "400"

Cenary: PUT Update User With Empty Password 400
    [tags]        PUT400.5
    Pick A Static Object    users.json    empty_password
    PUT Update Endpoint /users
    Validate Status Code "400"

Cenary: PUT Update User With Empty 'name' Parameter 400
    [tags]        PUT400.6
    Pick A Static Object    users.json    empty_name
    PUT Update Endpoint /users
    Validate Status Code "400"

Cenary: PUT Update User With Empty 'address' Parameter 400
    [tags]        PUT400.7
    Pick A Static Object    users.json    empty_address
    PUT Update Endpoint /users
    Validate Status Code "400"

Cenary: PUT Update User With Empty Phone 400
    [tags]        PUT400.8
    Pick A Static Object    users.json    empty_phone
    PUT Update Endpoint /users
    Validate Status Code "400"

# ----------------------- PATCH -----------------------

Cenary: PATCH Update User 200
    [tags]        PATCH200
    Pick A Static Object    users.json    valid_user
    PATCH Update Endpoint /users
    Validate Status Code "200"

Cenary: PATCH Add New User 201
    [tags]        PATCH201
    Pick A Static Object    users.json    valid_user
    PATCH New Endpoint /users
    Validate Status Code "201"

Cenary: PATCH User Without Id In The Endpoint 404
    [tags]        PATCH404
    Pick A Static Object    users.json    valid_user
    PATCH Update Invalid Endpoint /users
    Validate Status Code "404"

Cenary: PATCH Update User With Unavaliable Email 400
    [tags]        PATCH400.1
    Pick A Static Object    users.json    unavaliable_email
    PATCH Update Endpoint /users
    Validate Status Code "400"

Cenary: PATCH Update User With Existent Username 400
    [tags]        PATCH400.2
    Pick A Static Object    users.json    unavaliable_username
    PATCH Update Endpoint /users
    Validate Status Code "400"

Cenary: PATCH Update User With Empty Email 400
    [tags]        PATCH400.3
    Pick A Static Object    users.json    empty_email
    PATCH Update Endpoint /users
    Validate Status Code "400"

Cenary: PATCH User With Empty Username 400
    [tags]        POST400.4
    Pick A Static Object    users.json    empty_username
    POST Endpoint /users
    Validate Status Code "400"

Cenary: PATCH Update User With Empty Password 400
    [tags]        PATCH400.5
    Pick A Static Object    users.json    empty_password
    PATCH Update Endpoint /users
    Validate Status Code "400"

Cenary: PATCH Update User With Empty 'name' Parameter 400
    [tags]        PATCH400.6
    Pick A Static Object    users.json    empty_name
    PATCH Update Endpoint /users
    Validate Status Code "400"

Cenary: PATCH Update User With Empty 'address' Parameter 400
    [tags]        PATCH400.7
    Pick A Static Object    users.json    empty_address
    PATCH Update Endpoint /users
    Validate Status Code "400"

Cenary: PATCH Update User With Empty Phone 400
    [tags]        PATCH400.8
    Pick A Static Object    users.json    empty_phone
    PATCH Update Endpoint /users
    Validate Status Code "400"

# ----------------------- DELETE -----------------------

Cenary: DELETE User 204
    [tags]        DELETE204
    DELETE Endpoint    /users    1
    Validate Status Code "204"

Cenary: DELETE Invalid User 404
    [tags]        DELETE404
    DELETE Endpoint    /users    364
    Validate Status Code "404"