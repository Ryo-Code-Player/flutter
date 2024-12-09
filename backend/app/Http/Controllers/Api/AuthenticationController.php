<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\Password;
use Auth;
use App\Models\User;
class AuthenticationController extends Controller
{
    public function store(Request $request)
    {
        // Validate email và password
        $validated = $request->validate([
            'email' => 'required|email',
            'password' => 'required|min:6',
        ]);

        // Thực hiện xác thực người dùng
        if (Auth::attempt(['email' => $request->email, 'password' => $request->password])) {
            // Xác thực thành công, lấy thông tin người dùng
            $user = Auth::user();

            // Kiểm tra nếu người dùng bị vô hiệu hóa
            if ($user->status === 'inactive') {
                return response()->json([
                    'success' => false,
                    'message' => 'Account is inactive.',
                ], 401);
            }

            // Tạo token cho người dùng
            $token = $user->createToken('appToken')->accessToken;

            // Trả về response thành công với token và thông tin người dùng
            return response()->json([
                'success' => true,
                'token' => $token,
                'user' => $user,
            ], 200);
        }

        // Nếu không xác thực được người dùng
        return response()->json([
            'success' => false,
            'message' => 'Invalid credentials.',
        ], 401);
    }

        /**
     * Destroy an authenticated session.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\RedirectResponse
     */
    public function destroy(Request $request)
    {
        if (Auth::user()) {
            $request->user()->token()->revoke();

            return response()->json([
                'success' => true,
                'message' => 'Logged out successfully',
            ], 200);
        }
    }
    
    public function saveUser(Request $request)
    {
        $this->validate($request,[
            'full_name'=>'string|required',
            'description'=>'string|nullable',
            'phone'=>'string|required',
            'email'=>'string|required',
            'password'=>'string|required',
            'address'=>'string|required',
        ]);
        $data = $request->all();
        $olduser =\App\Models\User::where('phone',$data['phone'])->get();
        if(count($olduser) > 0)
            return response()->json([
                'success' => false,
                'message' => 'Đã có người dùng sđt này',
            ], 200);


        $olduser = \App\Models\User::where('email',$data['email'])->get();
        if(count($olduser) > 0)
            return response()->json([
                'success' => false,
                'message' => 'email đã tồn tại',
            ], 200);
            
        $data['photo'] = asset('backend/assets/dist/images/profile-6.jpg');
        $data['password'] = Hash::make($data['password']);
        $data['username'] = $data['phone'];
        $data['role'] = 'customer';
        $status = \App\Models\User::c_create($data);
        if(!$status) 
        {
            return response()->json([
                'success' => false,
                'message' => 'Lỗi xảy ra',
            ], 200);
        }    
        // $credentials = $request->only('email', 'password');
        // \Auth::attempt($credentials);
        // $request->session()->regenerate();
        return response()->json([
            'success' => true,
            'message' => 'Đăng kí thành công',
        ], 200);
    }
    //
}
