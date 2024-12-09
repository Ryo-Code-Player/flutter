<?php

namespace App\Http\Controllers\Api;
use App\Http\Controllers\Controller;
use App\Models\Blog;
use Illuminate\Http\Request;
use App\Models\BlogCategory;


class BlogController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }
        // Phương thức lấy danh sách bài viết
    public function getBlogs(Request $request)
        {
            // Lấy bài viết từ database với phân trang
            $blogs = \App\Models\Blog::where('status', 'active')->get(); 

            // Trả về dữ liệu dưới dạng JSON
            return response()->json([
                'success' => true,
                'blogs' => $blogs->map(function ($blogs)
                {
                    return [
                        'title' => $blogs->title,
                        'content' => $blogs->content,
                        'photo' => $blogs->photo,
                        'summary' => $blogs->summary,
                        
                    ];
                }) // Trả về danh sách bài viết
            ],200);
        }
}
