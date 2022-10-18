* Settings *
Documentation   Test Cases file for testing at /products endpoint
Resource        ../keywords/products_keywords.robot
Suite Setup     Initialize Session

* Test Cases *

# ----------------------- GET -----------------------

Cenary: GET All Products 200
    [tags]      GET200.1
    GET Endpoint    /products
    Validate Status Code "200"

Cenary: GET One Product 200
    [tags]      GET200.2
    GET Id          /products   13
    Validate Status Code "200"

Cenary: GET Non-Existent Product 404
    [tags]      GET404.1
    Get Id          /products   35
    Validate Status Code "404"

Cenary: GET Limit Products 200
    [tags]      GET200.3
    GET Quantity    /products   13
    Validate Status Code "200"

Cenary: GET Limit Out Of Range Products 400
    [tags]      GET404.2
    Get Quantity    /products   -1
    Validate Status Code "404"

Cenary: GET Sort Products 200
    [tags]      GET200.4
    Get Sort        /products
    Validate Status Code "200"

Cenary: GET Invalid Sort Products 400
    [tags]      GET400.1
    GET Invalid Sort    /products
    Validate Status Code "400"

Cenary: GET All Categories 200
    [tags]      GET200.5
    GET Products Categories
    Validate Status Code "200"

Cenary: GET Specific Category 200
    [tags]      GET200.6
    GET Category: jewelery
    Validate Status Code "200"

Cenary: GET Invalid Category 400
    [tags]      GET400.2
    GET Category: invalid
    Validate Status Code "400"

# ----------------------- POST -----------------------

Cenary: POST New Product 201
    [tags]      POST201
    Pick A Static Product    valid_product
    POST Endpoint /products
    Validate Status Code "201"

Cenary: POST Already Existent Product 400
    [tags]      POST400.1
    Pick A Static Product    invalid_product
    POST Endpoint /products
    Validate Status Code "400"

Cenary: POST Empty Product 400
    [tags]      POST400.2
    Pick A Static Product    empty_product
    POST Endpoint /products
    Validate Status Code "400"

Cenary: POST Product Without Title 400
    [tags]      POST400.3
    Pick A Static Product    empty_title
    POST Endpoint /products
    Validate Status Code "400"

Cenary: POST Product Without Price 400
    [tags]      POST400.4
    Pick A Static Product    empty_price
    POST Endpoint /products
    Validate Status Code "400"

Cenary: POST Product Without Description 400
    [tags]      POST400.5
    Pick A Static Product    empty_description
    POST Endpoint /products
    Validate Status Code "400"

Cenary: POST Product Without Image 400
    [tags]      POST400.6
    Pick A Static Product    empty_image
    POST Endpoint /products
    Validate Status Code "400"

Cenary: POST Product Without Category 400
    [tags]      POST400.7
    Pick A Static Product    empty_category
    POST Endpoint /products
    Validate Status Code "400"

# ----------------------- PUT -----------------------

Cenary: PUT Update Product 200
    [tags]      PUT200
    Pick A Static Product    valid_product
    PUT Endpoint /products
    Validate Status Code "200"

Cenary: PUT Update Non-Existent Product 201
    [tags]    PUT201
    Pick A Static Product    valid_product
    PUT Non-Existent Endpoint /products
    Validate Status Code "201"

Cenary: PUT Product Without Id In The Endpoint 404
    [tags]      PUT404
    Pick A Static Product    valid_product
    PUT Create Endpoint /products
    Validate Status Code "404"

Cenary: PUT Product With Already Existent Title 400
    [tags]    PUT400.1
    Pick A Static Product    invalid_product
    PUT Endpoint /products
    Validate Status Code "400"

Cenary: PUT With Empty Product 400
    [tags]    PUT400.2
    Pick A Static Product    empty_product
    PUT Endpoint /products
    Validate Status Code "400"

Cenary: PUT Empty Title 400
    [tags]    PUT400.3
    Pick A Static Product    empty_title
    PUT Endpoint /products
    Validate Status Code "400"

Cenary: PUT Empty Price 400
    [tags]    PUT400.4
    Pick A Static Product    empty_price
    PUT Endpoint /products
    Validate Status Code "400"

Cenary: PUT Empty Description 400
    [tags]    PUT400.5
    Pick A Static Product    empty_description
    PUT Endpoint /products
    Validate Status Code "400"

Cenary: PUT Empty Image 400
    [tags]    PUT400.6
    Pick A Static Product    empty_image
    PUT Endpoint /products
    Validate Status Code "400"

Cenary: PUT Empty Category 400
    [tags]    PUT400.7
    Pick A Static Product    empty_category
    PUT Endpoint /products
    Validate Status Code "400"

# ----------------------- PATCH -----------------------

Cenary: PATCH Update Product 200
    [tags]      PATCH200
    Pick A Static Product    valid_product
    PATCH Endpoint /products
    Validate Status Code "200"

Cenary: PATCH Update Non-Existent Product 201
    [tags]    PATCH201
    Pick A Static Product    valid_product
    PATCH Non-Existent Endpoint /products
    Validate Status Code "201"

Cenary: PATCH Product Without Id In The Endpoint 404
    [tags]      PATCH404
    Pick A Static Product    valid_product
    PATCH Create Endpoint /products
    Validate Status Code "404"

Cenary: PATCH Product With Already Existent Title 400
    [tags]    PATCH400.1
    Pick A Static Product    invalid_product
    PATCH Endpoint /products
    Validate Status Code "400"

Cenary: PATCH With Empty Product 400
    [tags]    PATCH400.2
    Pick A Static Product    empty_product
    PATCH Endpoint /products
    Validate Status Code "400"

Cenary: PATCH Empty Title 400
    [tags]    PATCH400.3
    Pick A Static Product    empty_title
    PATCH Endpoint /products
    Validate Status Code "400"

Cenary: PATCH Empty Price 400
    [tags]    PATCH400.4
    Pick A Static Product    empty_price
    PATCH Endpoint /products
    Validate Status Code "400"

Cenary: PATCH Empty Description 400
    [tags]    PATCH400.5
    Pick A Static Product    empty_description
    PATCH Endpoint /products
    Validate Status Code "400"

Cenary: PATCH Empty Image 400
    [tags]    PATCH400.6
    Pick A Static Product    empty_image
    PATCH Endpoint /products
    Validate Status Code "400"

Cenary: PATCH Empty Category 400
    [tags]    PATCH400.7
    Pick A Static Product    empty_category
    PATCH Endpoint /products
    Validate Status Code "400"

Cenary: DELETE Product 200
    [tags]    DELETE200
    DELETE Endpoint /products    5
    Validate Status Code "200"

Cenary: DELETE Non-Existent Product 404
    [tags]    DELETE404
    DELETE Endpoint /products    96
    Validate Status Code "404"