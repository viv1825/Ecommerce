<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\ProductController;



Route::apiResource('products',ProductController::class);

// Get a list of products, with pagination
// Route::get('/products', [ProductController::class, 'index'])->name('products.index');
// Description: Retrieves a paginated list of all products.
// Example: GET http://localhost:8000/api/products
    

// Store a newly created product
// Route::post('/products', [ProductController::class, 'store'])->name('products.store');
// Description: Stores a newly created product in the database.
// Example: POST http://localhost:8000/api/products


// Get details of a specific product by its ID
// Route::get('/products/{product}', [ProductController::class, 'show'])->name('products.show');
// Description: Retrieves the details of a specific product by its ID.
// Example: GET http://localhost:8000/api/products/1


// Update a specific product by its ID
// Route::put('/products/{product}', [ProductController::class, 'update'])->name('products.update');
// Description: Updates the details of a specific product by its ID.
// Example: PUT http://localhost:8000/api/products/1


// Delete a specific product by its ID
// Route::delete('/products/{product}', [ProductController::class, 'destroy'])->name('products.destroy');
// Description: Deletes a specific product by its ID.
// Example: DELETE http://localhost:8000/api/products/1