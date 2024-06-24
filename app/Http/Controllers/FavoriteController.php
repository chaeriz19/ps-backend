<?php
namespace App\Http\Controllers;

use App\Models\Favorite;
use Illuminate\Http\Request;

class FavoriteController extends Controller
{
    public function store(Request $request)
    {
        $request->validate([
            'content_id' => 'required|exists:contents,id',
        ]);
        $user = auth('sanctum')->user();
        Favorite::create([
            'user_id' => $user->id,
            'content_id' => $request->content_id,
        ]);

        return redirect()->back()->with('success', 'Content added to favorites!');
    }

    public function destroy(Request $request)
    {
        $user = auth('sanctum')->user();
        $favorite = $user->favorites()->where('content_id', $request->content_id)->firstOrFail();
        $favorite->delete();

        return redirect()->back()->with('success', 'Content removed from favorites!');
    }
}