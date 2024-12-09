<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\Comment;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

class CommentController extends Controller
{
    // Hiển thị tất cả bình luận
    public function index(Request $request)
    {
        $query = Comment::orderBy('id', 'DESC');

        // Lọc theo product_id nếu có
        if ($request->has('product_id')) {
            $query->where('product_id', $request->product_id);
        }

        // Phân trang bình luận (10 bình luận mỗi trang)
        $comments = $query->paginate(10);
        return response()->json($comments);
    }

    // Thêm bình luận mới
    public function store(Request $request)
    {
        // Validate dữ liệu
        $validator = Validator::make($request->all(), [
            'user_id' => 'required|integer',
            'name' => 'required|string|max:255',
            'email' => 'nullable|string|email|max:255',
            'url' => 'nullable|string|max:255',
            'content' => 'required|string',
            'product_id' => 'required|integer', // Không cần phải kiểm tra sự tồn tại trong bảng products
            'status' => 'nullable|string|in:active,inactive',
        ]);

        if ($validator->fails()) {
            return response()->json([
                'message' => 'Validation failed',
                'errors' => $validator->errors()
            ], 422);
        }

        try {
            // Tạo bình luận mới
            $comment = Comment::create([
                'user_id' => $request->user_id,
                'name' => $request->name,
                'email' => $request->email,
                'url' => $request->url,
                'content' => $request->content,
                'product_id' => $request->product_id,
                'status' => $request->status ?? 'active',
            ]);

            return response()->json([
                'message' => 'Bình luận đã được thêm thành công',
                'data' => $comment
            ], 201);
        } catch (\Exception $e) {
            return response()->json([
                'message' => 'Có lỗi xảy ra khi thêm bình luận',
                'error' => $e->getMessage()
            ], 500);
        }
    }

    // Cập nhật bình luận
    public function update(Request $request, $id)
    {
        // Tìm bình luận theo ID
        $comment = Comment::find($id);
        if (!$comment) {
            return response()->json(['message' => 'Bình luận không tồn tại'], 404);
        }

        // Validate dữ liệu (cập nhật)
        $validator = Validator::make($request->all(), [
            'name' => 'sometimes|required|string|max:255',
            'email' => 'nullable|string|email|max:255',
            'url' => 'nullable|string|max:255',
            'content' => 'sometimes|required|string',
            'product_id' => 'sometimes|required|integer',
            'status' => 'nullable|string|in:active,inactive',
        ]);

        if ($validator->fails()) {
            return response()->json([
                'message' => 'Validation failed',
                'errors' => $validator->errors()
            ], 422);
        }

        try {
            // Cập nhật bình luận
            $comment->update($request->only([
                'name', 'email', 'url', 'content', 'product_id', 'status'
            ]));

            return response()->json([
                'message' => 'Bình luận đã được cập nhật thành công',
                'data' => $comment
            ]);
        } catch (\Exception $e) {
            return response()->json([
                'message' => 'Có lỗi xảy ra khi cập nhật bình luận',
                'error' => $e->getMessage()
            ], 500);
        }
    }

    // Xóa bình luận
    public function destroy($id)
    {
        try {
            $comment = Comment::find($id);
            if (!$comment) {
                return response()->json(['message' => 'Bình luận không tồn tại'], 404);
            }

            $comment->delete();

            return response()->json([
                'message' => 'Bình luận đã được xóa thành công'
            ], 200);
        } catch (\Exception $e) {
            return response()->json([
                'message' => 'Có lỗi xảy ra khi xóa bình luận',
                'error' => $e->getMessage()
            ], 500);
        }
    }

    // Lấy bình luận theo product_id
    public function getByProduct($productId)
    {
        try {
            $comments = Comment::where('product_id', $productId)
                ->orderBy('created_at', 'DESC')
                ->paginate(10);

            return response()->json($comments);
        } catch (\Exception $e) {
            return response()->json([
                'message' => 'Có lỗi xảy ra khi lấy bình luận',
                'error' => $e->getMessage()
            ], 500);
        }
    }
}
