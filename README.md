## Notes while developing:

While i was developing the Test Cases for this API, i encountered an awful lot of errors. 

*** /products ***

- When i try to make a GET request at /products with an out of range id, the status code i'm given is 200, but that should not happen, because the product of that id doesn't exist. So instead of returning a 200 status with an empty body, this request should return a 404 error. But let's say that we want a 200 code to be retured despite the fact that the product doesn't exist, if this is the case, it should be returned a 204 status code, because there's nothing to be returned in the body of the response.

- The same thing happens when i try to make a request to limit the shown products to an out of range quantity, instead of a 400 error, i'm given a 200 sucess and the 20 products in the database.

- When i try to make a request at /products with an invalid parameter for the sort path i'm given a 200 status code, when the API should return a 400 error instead.

Apparently this API doesn't handle errors correctly throughout the requests, but maybe it's too soon to get to this conclusion.

- The same thing happens when i try to make a request to list the products of an invalid category, i get a 200 status instead of a 400.

- When i try to make a POST request to insert a new product, instead of returning a 201 status code to show something was created, i'm given, once again, a 200 status code.

- Well, i'm pretty sure i was right. I was just trying to create a product without the required json objects, but the response i got was still a 200 status code when it should have been a 400.

- The API doesn't allow us to create a new product using the PUT request, it returns a 404 error. This is the first time i encountered this error.

- When i try to delete a product that exists i get a 200 status in return, but i think the best practice here would be to return a 204 status, because that's the status we should get when we hhave a sucessfull request that does not return any content.

- When i tr to delete a product that does not exist, i get a 200 status when i hsoud get a 404 status instead, because the path i typed on the endpoint is for an id that doesn't exist in the database


*** /carts ***

- When i try to get a cart by date following the API's documentation i get the error: "status":"error","message":"cart id should be provided" so it means that the documentation is wrong. The same thing happens with the other test cases based on the dates.

- The errors i encountered in this endpoint are the same for /products


*** /login ***

- When trying to login without a username or without a password, instead of returning a 400 error, the api gets into a loop and, after a while, returns a 524 runtime error because of the loop in the server. So i commented the test cases for these cenaries.