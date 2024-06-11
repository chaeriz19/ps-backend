<?php

    namespace App\Http\Controllers;
    use Illuminate\Http\Request;
    use Illuminate\Support\Facades\Auth;
    use App\Models\User;
    use Illuminate\Support\Facades\Hash;
    use Illuminate\Support\Str;
    use Illuminate\Support\Facades\Validator;

    // authorize and user authorisation functions here
    class AuthController extends Controller
    {

        // register and add a user to the database
        public function register(Request $request) {

            // verify user passed data in
            // the request
            $validator = Validator::make($request->all(), [
                'name' => 'required|max:255',
                'email' => 'required|email:rfc,dns|max:255',
                'password' => 'required|max:255',
            ]);
            
            // check if everything in request is valid
            // when validator fails send negative success message
            if ($validator->fails()) {
                return response()->json([
                    'success' => false, 
                    'message' => $validator->errors()->first()], 422);
            }

            $user = User::create([
                'name' => $request->name,
                'email' => $request->email,
                'password' => Hash::make($request->password),
                'remember_token' => Str::random(10),
                'created_at' => now(),
            ]);

            return response()->json([

                // return success message as true if auth
                // went successfully
                'success' => true,
                'user' => $user,
            ]);
        }

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
            return response()->json(['success' => false, 'message' => 'Unauthorized: email or password are invalid'], 401);

        }
    }
