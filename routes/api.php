<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\ProductController;



Route::apiResource('products',ProductController::class);

// Method: GET
// path: http://localhost:8000/api/products
// Retrieves a paginated list of all products.
    

// Method: POST
// path:  http://localhost:8000/api/products
// Stores new product in the database.


// Method: GET
// path:  http://localhost:8000/api/products/1
// Retrieves the details of a specific product by its ID.


// Method: PUT
// path:  http://localhost:8000/api/products/1
// Updates the details of a specific product by its ID.


// Method: DELETE
// path: http://localhost:8000/api/products/1
// Deletes a specific product by its ID.