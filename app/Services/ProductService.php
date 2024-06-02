<?php

namespace App\Services;

use App\Models\Product;

class ProductService
{
    /**
     * Save a new product to the database.
     *
     * @param \Illuminate\Http\Request $request The validated request containing product details.
     * @return \App\Models\Product The newly created product.
     */
    public function saveProduct($request)
    {
        // Create a new product record using the validated request data
        return Product::create($request->validated());
    }

    /**
     * Update an existing product in the database.
     */
    public function updateProduct($request, Product $product)
    {
        // Update the product record with the validated request data
        $product->update($request->validated());
        // Return the updated product
        return $product;
    }

    /**
     * Delete a product from the database.
     */
    public function deleteProduct(Product $product)
    {
        // Delete the product record from the database
        $product->delete();
    }
}
