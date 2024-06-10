<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

// authorize and user authorisation functions here
class AuthController extends Controller
{
    public function login(Request $request) {

        // validate if email and password have been
        // passed correctly
        $request->validate([
            'email' => 'required|email',
            'password' => 'required',
        ]);
        $data = $request->only('email', 'password');

        if (Auth::attempt($data)) {

            // check authorisation
            $user = Auth::user();

            // Create access token to authorize if user doesnt have one
            // if user has a authentication token, delete the current one and refresh
            if ($user->tokens()->count() > 0) {
                $user->tokens()->delete();
                $token = $user->createToken('Access Token')->plainTextToken;
            } else {
                
                // create new token
                $token = $user->createToken('Access Token')->plainTextToken;
            }

            return response()->json([

                // return success message as true if auth
                // went successfully
                'success' => true,
                'token' => $token,
                'user' => $user,
            ]);
        }

        // if authorization is unsuccessfull
        // return error
        return response()->json(['error' => 'Unauthorized'], 401);

    }
}
