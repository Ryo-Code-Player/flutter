<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Rating;
use Illuminate\Support\Facades\Validator;

class RatingController extends Controller
{
    public function store(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'user_id' => 'required|integer',
            'product_id' => 'required|integer',
            'rating' => 'required|integer|min:1|max:5',
            'review' => 'nullable|string|max:1000'
        ]);

        if ($validator->fails()) {
            return response()->json([
                'status' => false,
                'message' => 'Validation error',
                'errors' => $validator->errors()
            ], 422);
        }

        $rating = Rating::create([
            'user_id' => $request->user_id,
            'product_id' => $request->product_id,
            'rating' => $request->rating,
            'review' => $request->review,
            'status' => 'active'
        ]);

        return response()->json([
            'status' => true,
            'message' => 'Rating created successfully',
            'data' => $rating
        ], 201);
    }

    public function getProductRatings($product_id)
    {
        $rating = Rating::where('product_id', $product_id)
            ->where('status', 'active')
            ->get();

        $avgRating = Rating::where('product_id', $product_id)
            ->where('status', 'active')
            ->avg('rating');

        return response()->json([
            'status' => true,
            'message' => 'Product ratings retrieved successfully',
            'data' => [
                'rating' => $rating,
                'average_rating' => round($avgRating, 1),
                'total_ratings' => $rating->count()
            ]
        ]);
    }
}
