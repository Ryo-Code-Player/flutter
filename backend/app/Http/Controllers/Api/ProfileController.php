<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Http\Controllers\Api\AuthenticationController;
use Illuminate\Http\Request;
use App\Models\User;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
use App\Models\UserSetting;
// use App\Models\SettingDetail;
// use App\Models\Category;

class ProfileController extends Controller
{
    //
    public function __construct()
    {
        $this->middleware('auth:api');
    }

    public function viewProfile()
    {
        $user = auth()->user();

        $data = [
            'profile' => $user,
            'totalorder' => DB::selectOne("SELECT COUNT(id) as total FROM orders WHERE customer_id = ? AND status = 'active'", [$user->id])->total,
            'totalpendorder' => DB::selectOne("SELECT COUNT(id) as total FROM orders WHERE customer_id = ? AND status = 'pending'", [$user->id])->total,
            'totalwishlist' => DB::selectOne("SELECT COUNT(id) as total FROM wishlists WHERE user_id = ?", [$user->id])->total,
        ];

        $defaultSetting = UserSetting::where('user_id', $user->id)->first();
        if ($defaultSetting) {
            $data['default_setting'] = $defaultSetting;
            if ($defaultSetting->ship_id) {
                $data['shipaddress'] = AddressBook::find($defaultSetting->ship_id);
            }
            if ($defaultSetting->invoice_id) {
                $data['invoiceaddress'] = AddressBook::find($defaultSetting->invoice_id);
            }
        }
        return response()->json($data);
    }
    public function updateProfile(Request $request)
{
    $this->validate($request, [
        'full_name' => 'string|required',
        'address' => 'string|required',
        'photo' => 'nullable|string',
        'description' => 'nullable|string',
    ]);

    $user = auth()->user();
    $data = $request->all();

    // Kiểm tra sự tồn tại của 'photo'
    $photo = $data['photo'] ?? null;
    $photoOld = $data['photo_old'] ?? $user->photo;

    // Logic cập nhật photo
    if ($photo === null || $photo === "") {
        $photo = $photoOld;
    }
    if ($photo === null || $photo === "") {
        $photo = asset('backend/assets/dist/images/avatar.jpg');
    }

    $data['photo'] = $photo;

    // Lưu thông tin user
    $status = $user->fill($data)->save();

    if ($status) {
        return response()->json(['message' => 'Bạn đã cập nhật thành công'], 200);
    } else {
        return response()->json(['message' => 'Lỗi xảy ra'], 400);
        }
    }

    public function uploadPhoto(Request $request)
{
    $this->validate($request, [
        'photo' => 'required|image|mimes:jpeg,png,jpg,gif|max:2048'
    ]);

    try {
        $user = auth()->user();
        
        if ($request->hasFile('photo')) {
            $file = $request->file('photo');
            $fileName = time() . '_' . $file->getClientOriginalName();
            
            // Upload file vào thư mục storage/app/public/photos
            $path = $file->storeAs('photos', $fileName, 'public');
            
            // Thêm tiền tố "storage/" vào đường dẫn khi lưu vào database
            $storagePath = 'storage/' . $path;
            $user->updatePhoto($storagePath);

            // Trả về URL đầy đủ trong response để hiển thị
            return response()->json([
                'message' => 'Upload ảnh thành công',
                'photo_url' => asset($storagePath)
            ], 200);
        }

        return response()->json(['message' => 'Không tìm thấy file ảnh'], 400);
    } catch (\Exception $e) {
        return response()->json(['message' => 'Lỗi upload ảnh: ' . $e->getMessage()], 500);
    }
}
}
