<?php

namespace App\Http\Controllers;

use App\Models\Product;
use Illuminate\Http\Request;
use App\Services\ProductService;
use App\Http\Resources\ProductResource;
use App\Http\Requests\StoreProductRequest;
use Illuminate\Support\Facades\Cache;

class ProductController extends Controller
{
    protected $productService;

    /**
     * Instantiate a new ProductController instance.
     *
     * @param \App\Services\ProductService $productService The product service instance.
     */
    public function __construct(ProductService $productService)
    {
        $this->productService = $productService;
    }

    /**
     * Display a listing of the products.
     *
     * @return \Illuminate\Http\Resources\Json\AnonymousResourceCollection The paginated list of products.
     */
    public function index()
    {
        // Cache the products for 10 minutes
        $products = Cache::remember('products', 600, function () {
            return Product::paginate(10);
        });
        
        // Return the paginated products as a collection of ProductResource
        return ProductResource::collection($products);
    }

    /**
     * Store a newly created product in the database.
     *
     * @param \App\Http\Requests\StoreProductRequest $request The validated request containing product details.
     * @return \App\Http\Resources\ProductResource The newly created product.
     */
    public function store(StoreProductRequest $request)
    {
        // Save the new product using the product service
        $product = $this->productService->saveProduct($request);
        
        // Clear the cached product list
        Cache::forget('products');
        
        // Return the newly created product as a ProductResource
        return new ProductResource($product);
    }

    /**
     * Display the specified product.
     *
     * @param \App\Models\Product $product The product to be displayed.
     * @return \App\Http\Resources\ProductResource The specified product.
     */
    public function show(Product $product)
    {
        // Return the specified product as a ProductResource
        return new ProductResource($product);
    }

    /**
     * Update the specified product in the database.
     *
     * @param \App\Http\Requests\StoreProductRequest $request The validated request containing updated product details.
     * @param \App\Models\Product $product The product to be updated.
     * @return \App\Http\Resources\ProductResource The updated product.
     */
    public function update(StoreProductRequest $request, Product $product)
    {
        // Update the product using the product service
        $updatedProduct = $this->productService->updateProduct($request, $product);
        
        // Clear the cached product list
        Cache::forget('products');
        
        // Return the updated product as a ProductResource
        return new ProductResource($updatedProduct);
    }

    /**
     * Remove the specified product from the database.
     *
     * @param \App\Models\Product $product The product to be deleted.
     * @return \Illuminate\Http\JsonResponse A response indicating successful deletion with a message.
     */
    public function destroy(Product $product)
    {
        // Delete the product using the product service
        $this->productService->deleteProduct($product);
        
        // Clear the cached product list
        Cache::forget('products');
        
        // Return a 204 No Content response with a message indicating successful deletion
        return response()->json(['message' => 'Product deleted successfully'], 204);
    }
}
