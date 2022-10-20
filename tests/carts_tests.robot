* Settings *
Documentation   Test Cases file for testing at /carts endpoint
Resource        ../keywords/carts_keywords.robot
Suite Setup     Initialize Session

* Test Cases *

# --------------------------- GET --------------------------

Cenary: GET All Carts 200
    [tags]        GET200.1
    GET Endpoint  /carts
    Validate Status Code "200"

Cenary: GET A Specific Cart 200
    [tags]        GET200.2
    GET Id        /carts    4
    Validate Status Code "200"

Cenary: GET Non-Existent Cart 404
    [tags]        GET404.1
    GET Id    /carts    200
    Validate Status Code "404"

Cenary: GET A Limited Quantity of Carts 200
    [tags]        GET200.3
    GET Quantity    /carts    3
    Validate Status Code "200"

Cenary: GET Out-of-Range Cart 404
    [tags]        GET404.2
    GET Quantity    /carts    19
    Validate Status Code "404"

Cenary: GET Sort Carts 200
    [tags]        GET200.4
    GET Sort        /carts
    Validate Status Code "200"

Cenary: GET Invalid Sort 400
    [tags]        GET400.1
    GET Invalid Sort    /carts
    Validate Status Code "400"

Cenary: GET All Carts Created On a Date Range 200
    [tags]        GET200.5
    GET Cart By Date    2020-02-01    2020-01-03
    Validate Status Code "200"

Cenary: GET Carts With Just The Start Date 200
    [tags]        GET200.6
    GET Cart By Date    2020-01-03    ""    
    Validate Status Code "200"

Cenary: GET Carts With Just The End Date 200
    [tags]        GET200.7
    GET Cart By Date    ""            2020-02-01
    Validate Status Code "200"

Cenary: GET Carts Created On a Future Date 400
    [tags]        GET400.2
    GET Cart By Date    2059-06-15    2098-05-19
    Validate Status Code "400"

Cenary: GET Carts Created Before The API Was Built 400
    [tags]        GET400.3
    GET Cart By Date    2011-09-17    2012-21-12
    Validate Status Code "400"

Cenary: GET Carts Of a Specific User 200
    [tags]        GET200.8
    GET User Cart        1
    Validate Status Code "200"

Cenary: GET Carts Of a User That Doesn't Have Carts 404
    [tags]        GET404.2
    GET User Cart        15
    Validate Status Code "404"

Cenary: GET Carts Of a User That Doesn't Exist 404
    [tags]        GET404.3
    GET User Cart        53
    Validate STatus Code "404"

# --------------------------- POST --------------------------

Cenary: POST A Cart 201
    [tags]        POST201
    Pick A Static Object    carts.json   valid_cart
    POST Endpoint /carts
    Validate Status Code "201"

Cenary: POST A Cart For An Non-Existing User 404
    [tags]        POST404.1
    Pick A Static Object    carts.json    nonexistent_user
    POST Endpoint /carts
    Validate Status Code "404"

Cenary: POST A Cart To a User That Already Has A Cart 400
    [tags]        POST400.1
    Pick A Static Object    carts.json    has_cart_user
    POST Endpoint /carts
    Validate Status Code "400"

Cenary: POST A Cart With An Empty User Id 400
    [tags]        POST400.2
    Pick A Static Object    carts.json    empty_user
    POST Endpoint /carts
    Validate Status Code "400"

Cenary: POST A Cart With An Invalid Date 400
    [tags]        POST400.3
    Pick A Static Object    carts.json    invalid_date
    POST Endpoint /carts
    Validate Status Code "400"

Cenary: POST A Cart With An Empty Date 400
    [tags]        POST400.4
    Pick A Static Object    carts.json    empty_date
    POST Endpoint /carts
    Validate Status Code "400"

Cenary: POST A Cart With An Empty Product 400
    [tags]        POST400.5
    Pick A Static Object    carts.json    empty_product
    POST Endpoint /carts
    Validate Status Code "400"

Cenary: POST A Cart With A Product With Invalid Id 400
    [tags]        POST400.6
    Pick A Static Object    carts.json    invalid_id
    POST Endpoint /carts
    Validate Status Code "400"

Cenary: POST A Cart With An Out-Of-Range Quantity Of Products 400
    [tags]        POST400.7
    Pick A Static Object    carts.json    outofrange_prod
    POST Endpoint /carts
    Validate Status Code "400"

Cenary: POST A Cart With Valid And Invalid Products At The Same Time 400
    [tags]        POST400.8
    Pick A Static Object    carts.json    valid_invalid
    POST Endpoint /carts
    Validate Status Code "400"

# --------------------------- PUT --------------------------

Cenary: PUT Update A Cart 200
    [tags]        PUT200
    Pick A Static Object    carts.json    valid_cart
    PUT Update Endpoint /carts
    Validate Status Code "200"

Cenary: PUT Create Cart 201
    [tags]        PUT201
    Pick A Static Object    carts.json    valid_cart
    PUT New Endpoint /carts
    Validate Status Code "201"

Cenary: PUT Update Cart Without Id 404
    [tags]        PUT404
    Pick A Static Object    carts.json    valid_cart
    PUT Update Invalid Endpoint /carts
    Validate Status Code "404"

Cenary: PUT Update Cart With Invalid User Id 400
    [tags]        PUT400.1
    Pick A Static Object    carts.json    nonexistent_user
    PUT Update Endpoint /carts
    Validate Status Code "400"

Cenary: PUT Update Cart With Empty User Id 400
    [tags]        PUT400.2
    Pick A Static Object    carts.json    empty_user
    PUT Update Endpoint /carts
    Validate Status Code "400"

Cenary: PUT Update Cart With Invalid Date 400
    [tags]        PUT400.3
    Pick A Static Object    carts.json    invalid_date
    PUT Update Endpoint /carts
    Validate Status Code "400"

Cenary: PUT Update Cart With Empty Date 400
    [tags]        PUT400.4
    Pick A Static Object    carts.json    empty_date
    PUT Update Endpoint /carts
    Validate Status Code "400"

Cenary: PUT Update Cart With Empty Product 400
    [tags]        PUT400.5
    Pick A Static Object    carts.json    empty_product
    PUT Update Endpoint /carts
    Validate Status Code "400"

Cenary: PUT Update Cart With Out-Of-range Quantity Of Products 400
    [tags]        PUT400.6
    Pick A Static Object    carts.json    outofrange_prod
    PUT Update Endpoint /carts
    Validate Status Code "400"

Cenary: PUT Update Cart With Valid And Invalid Products At The Same Time 400
    [tags]        PUT400.7
    Pick A Static Object    carts.json    valid_invalid
    PUT Update Endpoint /carts
    Validate Status Code "400"

# --------------------------- PATCH --------------------------

Cenary: PATCH Update A Cart 200
    [tags]        PATCH200
    Pick A Static Object    carts.json    valid_cart
    PATCH Update Endpoint /carts
    Validate Status Code "200"

Cenary: PATCH Create Cart 201
    [tags]        PATCH201
    Pick A Static Object    carts.json    valid_cart
    PATCH New Endpoint /carts
    Validate Status Code "201"

Cenary: PATCH Update Cart Without Id 404
    [tags]        PATCH404
    Pick A Static Object    carts.json    valid_cart
    PATCH Update Invalid Endpoint /carts
    Validate Status Code "404"

Cenary: PATCH Update Cart With Invalid User Id 400
    [tags]        PATCH400.1
    Pick A Static Object    carts.json    nonexistent_user
    PATCH Update Endpoint /carts
    Validate Status Code "400"

Cenary: PATCH Update Cart With Empty User Id 400
    [tags]        PATCH400.2
    Pick A Static Object    carts.json    empty_user
    PATCH Update Endpoint /carts
    Validate Status Code "400"

Cenary: PATCH Update Cart With Invalid Date 400
    [tags]        PATCH400.3
    Pick A Static Object    carts.json    invalid_date
    PATCH Update Endpoint /carts
    Validate Status Code "400"

Cenary: PATCH Update Cart With Empty Date 400
    [tags]        PATCH400.4
    Pick A Static Object    carts.json    empty_date
    PATCH Update Endpoint /carts
    Validate Status Code "400"

Cenary: PATCH Update Cart With Empty Product 400
    [tags]        PATCH400.5
    Pick A Static Object    carts.json    empty_product
    PATCH Update Endpoint /carts
    Validate Status Code "400"

Cenary: PATCH Update Cart With Out-Of-range Quantity Of Products 400
    [tags]        PATCH400.6
    Pick A Static Object    carts.json    outofrange_prod
    PATCH Update Endpoint /carts
    Validate Status Code "400"

Cenary: PATCH Update Cart With Valid And Invalid Products At The Same Time 400
    [tags]        PATCH400.7
    Pick A Static Object    carts.json    valid_invalid
    PATCH Update Endpoint /carts
    Validate Status Code "400"

# --------------------------- DELETE --------------------------

Cenary: DELETE Cart 204
    [tags]        DELETE204
    DELETE Endpoint    /carts    2
    Validate Status Code "204"

Cenary: DELETE Cart With Invalid Id 404
    [tags]        DELETE404
    DELETE Endpoint    /carts    36
    Validate Status Code "404"