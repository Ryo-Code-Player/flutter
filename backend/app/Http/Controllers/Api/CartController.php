<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\ShopingCart;
use Illuminate\Http\Request;

class CartController extends Controller
{
    // Lấy giỏ hàng của người dùng
    public function getCart($userId)
    {
        $cartItems = \App\Models\ShopingCart::where('user_id', $userId)->get();

        if ($cartItems->isEmpty()) {
            return response()->json(['message' => 'Giỏ hàng trống'], 404);
        }

        return response()->json($cartItems, 200);
    }

    // Thêm sản phẩm vào giỏ hàng
    public function addToCart(Request $request)
    {
        $validated = $request->validate([
            'user_id' => 'required|integer',
            'product_id' => 'required|integer',
            'quantity' => 'required|integer|min:1',
        ]);

        $cartItem = \App\Models\ShopingCart::create($validated);

        return response()->json($cartItem, 201);
    }

    // Xóa sản phẩm khỏi giỏ hàng
    public function removeFromCart($cartId)
    {
        $cartItem = \App\Models\ShopingCart::find($cartId);

        if (!$cartItem) {
            return response()->json(['message' => 'Sản phẩm không tồn tại trong giỏ'], 404);
        }

        $cartItem->delete();

        return response()->json(['message' => 'Sản phẩm đã được xóa'], 200);
    }
}
