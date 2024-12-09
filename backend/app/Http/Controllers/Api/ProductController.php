<?php
namespace App\Http\Controllers\Api;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\Validator;

class ProductController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }

    public function getAllProductList()
    {
        // $products = \App\Models\Product::where('status', 'active')->get();
        $products = \DB::select('select a.id, a.title, a.description, a.photo, a.price from products a where status = "active"');
        return response()->json([
            'success' => true,
            'products' => $products,
        ], 200);
    }
    public function getAllCat() {
        // Lấy danh sách các category với trạng thái active
        $cats = \App\Models\Category::where('status', 'active')->get();
    
        // Đảm bảo rằng các trường title và photo được trả về đúng
        return response()->json([
            'success' => true,
            'cats' => $cats->map(function ($cat) {
                return [
                    'title' => $cat->title,
                    'photo' => $cat->photo,
                ];
            }),
        ], 200);
    }
    
    
    
    public function getProductCat(Request $request)
    {
        $id = $request->cat_id;
        $products = \App\Models\Product::where('cat_id',$id)->where('status','active')->get();
        return response()->json([
            'success' => true,
            'products' => json_encode($products),
        ], 200);
    }
    public function getsearch(Request $request)
    {
        $query = $request->input('query');

        if (!$query) {
            return response()->json(['message' => 'No query provided'], 400);
        }

        $products = \App\Models\Product::where('title', 'like', "%{$query}%")
            ->orWhere('summary', 'like', "%{$query}%")
            ->orWhere('description', 'like', "%{$query}%")
            ->get();

        return response()->json($products, 200);
    }
    public function rateProduct(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'product_id' => 'required|exists:products,id',
            'rating' => 'required|numeric|min:1|max:5',
        ]);

    if ($validator->fails()) {
        return response()->json([
            'message' => 'Validation failed',
            'errors' => $validator->errors()
        ], 422);
    }

        // Lưu rating vào database
        $product = Product::find($request->product_id);
        $product->ratings()->create([
            'rating' => $request->rating,
            'user_id' => auth()->user()->id,
    ]);

        return response()->json([
            'message' => 'Rating has been submitted successfully',
        ], 200);
    }  
}
