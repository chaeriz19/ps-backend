<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Laravel\Sanctum\PersonalAccessToken;

class FavoriteController extends Controller
{
    public function favorite(Request $request) {
        $request->validate([
            'content_id' => 'required|exists:contents,id'
        ]);

        // check for token
        $user = auth('sanctum')->user();
        $contentId = $request->input('content_id');

        if (!$user) {return response()->json(['message' => 'Unauthorized.'], 401);}
        if ($user->favorites()->where('content_id', $contentId)->exists()) {return response()->json(['message' => 'Already favorited.'], 409);}

        $user->favorite()->create([
            'content_id' => $contentId,
        ]);

        return response()->json(['success' => true, 'message' => 'Added to favorites successfully'], 200);
    }
}