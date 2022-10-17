## Notes while developing:

- When i try to make a GET request at /products with an out of range id, the status code i'm given is 200, but that should not happen, because the product of that id doesn't exist. So instead of returning a 200 status with an empty body, this request should return a 404 error. But let's say that we want a 200 code to be retured despite the fact that the product doesn't exist, if this is the case, it should be returned a 204 status code, because there's nothing to be returned in the body of the response.

- The same thing happens when i try to make a request to limit the shown products to an out of range quantity, instead of a 400 error, i'm given a 200 sucess and the 20 products in the database.

- When i try to make a request at /products with an invalid parameter for the sort path i'm given a 200 status code, when the API should return a 400 error instead.

Apparently this API doesn't handle errors correctly throughout the requests, but maybe it's too soon to get to this conclusion.

- The same thing happens when i try to make a request to list the products of an invalid category, i get a 200 status instead of a 400.

- When i try to make a POST request to insert a new product, instead of returning a 201 status code to show something was created, i'm given, once again, a 200 status code.

- Well, i'm pretty sure i was right. I was just trying to create a product without the required json objects, but the response i got was still a 200 status code when it should have been a 400.

- The API doesn't allow us to create a new product using the PUT request, it returns a 404 error. This is the first time i encountered this error.