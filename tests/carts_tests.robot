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

Cenary: POST A Product To A Cart 201
    [tags]        POST201
    POST Endpoint /carts    valid_cart
    Validate Status Code "201"

Cenary: POST A Product To A Cart Of An Non-Existing User 404
    [tags]        POST404.1
    POST Endpoint /carts    nonexistent_user
    Validate Status Code "404"

Cenary: POST A Cart To a User That Already Has A Cart 400
    [tags]        POST400.1
    POST Endpoint /carts    has_cart_user
    Validate Status Code "400"

Cenary: POST A Product To A Cart With An Empty User Id 400
    [tags]        POST400.2
    POST Endpoint /carts    empty_user
    Validate Status Code "400"

Cenary: POST A Product To A Cart With An Invalid Date 400
    [tags]        POST400.3
    POST Endpoint /carts    invalid_date
    Validate Status Code "400"

Cenary: POST A Product To A Cart With An Empty Date 400
    [tags]        POST400.4
    POST Endpoint /carts    empty_date
    Validate Status Code "400"

Cenary: POST An Empty Product To A Cart 400
    [tags]        POST400.5
    POST Endpoint /carts    empty_product
    Validate Status Code "400"

Cenary: POST A Product With Invalid Id To A Cart 400
    [tags]        POST400.6
    POST Endpoint /carts    invalid_id
    Validate Status Code "400"

Cenary: POST An Out-Of_range Quantity Of Products To A Cart 400
    [tags]        POST400.7
    POST Endpoint /carts    outofrange_prod
    Validate Status Code "400"

Cenary: POST Valid And Invalid Products At The Same Time 400
    [tags]        POST400.8
    POST Endpoint /carts    valid_invalid
    Validate Status Code "400"
