<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\Models\User;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\Validator;

class AuthController extends Controller
{
    public function register(Request $request) {
        $validator = Validator::make($request->all(), [
            'name' => 'required|max:255',
            'email' => 'required|email:rfc,dns|max:255',
            'password' => 'required|max:255',
        ]);

        if ($validator->fails()) {
            return response()->json([
                'success' => false, 
                'message' => $validator->errors()->first()
            ], 422);
        }

        $user = User::create([
            'name' => $request->name,
            'email' => $request->email,
            'password' => Hash::make($request->password),
            'remember_token' => Str::random(10),
            'created_at' => now(),
        ]);

        return response()->json([
            'success' => true,
            'user' => $user,
        ]);
    }

    public function login(Request $request) {
        $request->validate([
            'email' => 'required|email',
            'password' => 'required',
        ]);

        $data = $request->only('email', 'password');

        if (Auth::attempt($data)) {
            $user = Auth::user();

            if ($user->tokens()->count() > 0) {
                $user->tokens()->delete();
                $token = $user->createToken('Access Token')->plainTextToken;
            } else {
                $token = $user->createToken('Access Token')->plainTextToken;
            }

            return response()->json([
                'success' => true,
                'token' => $token,
                'user' => $user,
            ]);
        }

        return response()->json(['success' => false, 'message' => 'Unauthorized: email or password are invalid'], 401);
    }

    public function delete(Request $request) {

        $validator = Validator::make($request->all(), [
            'id' => 'required|integer|exists:users,id',
        ]);

        if ($validator->fails()) {
            return response()->json([
                'success' => false, 
                'message' => $validator->errors()->first()
            ], 422);
        }

        $user = User::find($request->id);

        if ($user) {
            $user->delete();
            return response()->json([
                'success' => true,
                'message' => 'User deleted successfully',
            ]);
        }

        else {
            return response()->json([
                'success' => false,
                'message' => 'User not found',
            ], 404);
        }

        return response()->json([
            'success' => false,
            'message' => 'User not found',
        ], 404);
    }
}