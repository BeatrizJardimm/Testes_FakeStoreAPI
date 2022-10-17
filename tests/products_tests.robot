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
    POST Endpoint /products
    Validate Status Code "201"

Cenary: POST Already Existent Product 400
    [tags]      POST400.1
    POST Errors Endpoint /products  invalid_product
    Validate Status Code "400"

Cenary: POST Empty Product 400
    [tags]      POST400.2
    POST Errors Endpoint /products  empty_product
    Validate Status Code "400"

Cenary: POST Product Without Title 400
    [tags]      POST400.3
    POST Errors Endpoint /products  empty_title
    Validate Status Code "400"

Cenary: POST Product Without Price 400
    [tags]      POST400.4
    POST Errors Endpoint /products  empty_price
    Validate Status Code "400"

Cenary: POST Product Without Description 400
    [tags]      POST400.5
    POST Errors Endpoint /products  empty_description
    Validate Status Code "400"

Cenary: POST Product Without Image 400
    [tags]      POST400.6
    POST Errors Endpoint /products  empty_image
    Validate Status Code "400"

Cenary: POST Product Without Category 400
    [tags]      POST400.7
    POST Errors Endpoint /products  empty_category
    Validate Status Code "400"

# ----------------------- PUT -----------------------

Cenary: PUT Update Product 200
    [tags]      PUT200
    PUT Update Endpoint /products
    Validate Status Code "200"

Cenary: PUT Create New Product 201
    [tags]      PUT200
    PUT Create Endpoint /products
    Validate Status Code "201"