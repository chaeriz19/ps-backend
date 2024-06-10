<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

// authorize and user authorisation functions here
class AuthController extends Controller
{
    public function login(Request $request) {
        $data = $request->only('email', 'password');

        if (Auth::attempt($data)) {

            // check authorisation
            $user = Auth::user();

            // Create access token to authorize
            $token = $user->createToken('Access Token')->plainTextToken;

            return response()->json([
                'token' => $token,
                'user' => $user,
            ]);

        }

        return response()->json(['error' => 'Unauthorized'], 401);

    }
}
