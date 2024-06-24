<?php
namespace App\Http\Controllers;

use App\Models\Favorite;
use Illuminate\Http\Request;
use Illuminate\Http\JsonResponse;

class FavoriteController extends Controller
{
    // public function store(Request $request)
    // {
    //     $request->validate([
    //         'content_id' => 'required|exists:contents,id',
    //     ]);
    //     $user = auth('sanctum')->user();
    //     Favorite::create([
    //         'user_id' => $user->id,
    //         'content_id' => $request->content_id,
    //     ]);

    //     return redirect()->back()->with('success', 'Content added to favorites!');
    // }

    // public function destroy(Request $request)
    // {
    //     $user = auth('sanctum')->user();
    //     $favorite = $user->favorites()->where('content_id', $request->content_id)->firstOrFail();
    //     $favorite->delete();

    //     return redirect()->back()->with('success', 'Content removed from favorites!');
    // }

    public function togglefavorite(Request $request)
    {
        $user = auth('sanctum')->user();
        $favorite = $user->favorites()->where('content_id', $request->content_id)->first();
        if ($favorite) {
            $favorite->delete();
            return response()->json([
                'status' => true,
                'data' => 'favorite is deleted successfully'
            ]);
        } else {
            Favorite::create([
                'user_id' => $user->id,
                'content_id' => $request->content_id,
            ]);
            return response()->json([
                'status' => true,
                'data' => 'added successfully to favorites'
            ]);
        }
    }

    
    public function showfavorites(Request $request): JsonResponse
    {
        $user = auth('sanctum')->user();
        $favorites = $user->favorites()->with('content')->get();
    
        // Extract the content from each favorite
        $favoritedContent = $favorites->map(function($favorite) {
            return $favorite->content;
        });
    
        return response()->json([
            'status' => true,
            'data' => $favoritedContent
        ]);
    }
}