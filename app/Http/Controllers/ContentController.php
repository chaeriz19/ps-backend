<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Content;

class ContentController extends Controller
{
    public function get_all(Request $request, $type) {
        $data = Content::where('content', ucfirst($type))->get();
        return response()->json(['success' => true, 'data' => $data]);
    }

    public function favorites() {
        $user = auth('sanctum')->user();

        $data = $user->favorites()->get();
        return response()->json(['success' => true, 'data' => $data]);
    }
    // search function, pass in 'term' and get back the closest results!!! ezpz
    public function search(Request $request) {
        $request->validate([
            'term' => 'required|max:25'
        ]);
        $term = $request->term;
        return response()->json(['data'=> Content::where('title', 'LIKE', "$term%")->get(), 'term'=> $request->search]);
    }

    public function latest() {
        $data = Content::orderBy('created_at', 'DESC')->take(25)->get();
        return response()->json(['success' => true, 'data' => $data]);
    }
}
