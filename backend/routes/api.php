<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "api" middleware group. Make something great!
|
*/

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});
Route::group(['namespace' => 'Api', 'prefix' => 'v1'], function () {
    Route::post('login', [\App\Http\Controllers\Api\AuthenticationController::class, 'store']);
    Route::post('logout', [\App\Http\Controllers\Api\AuthenticationController::class, 'destroy'])->middleware('auth:api');
    Route::post('updateprofile', [\App\Http\Controllers\Api\ProfileController::class, 'updateProfile'])->middleware('auth:api');;
    Route::get('getallcat', [\App\Http\Controllers\Api\ProductController::class, 'getAllCat'])->middleware('auth:api');;
    Route::get('getproductcat', [\App\Http\Controllers\Api\ProductController::class, 'getProductCat'])->middleware('auth:api');;
    Route::get('getproductlist', [\App\Http\Controllers\Api\ProductController::class, 'getAllProductList'])->middleware('auth:api');;
    route::post('register', [\App\Http\Controllers\Api\AuthenticationController::class, 'saveUser']);
    Route::get('products/search', [\App\Http\Controllers\Api\ProductController::class, 'getSearch'])->middleware('auth:api');;

    // Comment routes
    Route::get('comments', [\App\Http\Controllers\Api\CommentController::class, 'index']);
    Route::post('comments', [\App\Http\Controllers\Api\CommentController::class, 'store']);
    Route::put('comments/{id}', [\App\Http\Controllers\Api\CommentController::class, 'update']);
    Route::delete('comments/{id}', [\App\Http\Controllers\Api\CommentController::class, 'destroy']);
    Route::get('comments/product/{productId}', [\App\Http\Controllers\Api\CommentController::class, 'getByProduct']);

    
    // Cart
    Route::get('cart/{userId}', [\App\Http\Controllers\Api\CartController::class, 'getCart']);
    Route::get('cart', [\App\Http\Controllers\Api\CartController::class, 'addToCart'])->middleware('auth:api');
    Route::delete('cart/{cartId}', [\App\Http\Controllers\Api\CartController::class, 'removeFromCart']);

    // comment
    Route::get('/', [\App\Http\Controllers\Api\CommentController::class, 'index']); // Hiển thị tất cả bình luận
    Route::post('/', [\App\Http\Controllers\Api\CommentController::class, 'store']); // Thêm bình luận mới
    Route::get('product/{productId}', [\App\Http\Controllers\Api\CommentController::class, 'getByProduct']); // Lấy bình luận theo product_id
    Route::put('{id}', [\App\Http\Controllers\Api\CommentController::class, 'update']); // Cập nhật bình luận
    Route::delete('{id}', [\App\Http\Controllers\Api\CommentController::class, 'destroy']); // Xóa bình luận

    Route::get('profile', [\App\Http\Controllers\Api\ProfileController::class, 'viewProfile']);  
    Route::get('profile/edit', [\App\Http\Controllers\Api\ProfileController::class, 'updateProfile']);  
    Route::get('changepassword', [\App\Http\Controllers\Api\ProfileController::class, 'updateName']);  
    Route::get('profile', [\App\Http\Controllers\Api\ProfileController::class, 'viewProfile']);  
    Route::post('upload-photo', [\App\Http\Controllers\Api\ProfileController::class, 'uploadPhoto']);

    // rating
    Route::post('ratings', [\App\Http\Controllers\Api\RatingController::class, 'store']);
    Route::get('ratings/product/{product_id}', [\App\Http\Controllers\Api\RatingController::class, 'getProductRatings']);
    // Blog
    Route::get('/blogs', [\App\Http\Controllers\Api\BlogController::class, 'getBlogs'])->middleware('auth:api');;
});
