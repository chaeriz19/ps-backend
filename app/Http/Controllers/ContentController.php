<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Content;
use Illuminate\Support\Facades\Validator;
class ContentController extends Controller
{
    public function get_all(Request $request, $type) {
        $data = Content::where('content', ucfirst($type))->get();
        return response()->json(['success' => true, 'data' => $data]);
    }

    public function all(Request $request) {
        $data = Content::all();
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

    public function sort_genre(Request $request, $genre) {
        $data = Content::where('genre', ucfirst($genre))->get();
        return response()->json(['success' => true, 'data' => $data]);
        
    }

    public function getContentById($id) {
        $content = Content::find($id);
        if ($content) {
            return response()->json(['success' => true, 'data' => $content]);
        } else {
            return response()->json(['success' => false, 'message' => 'Content not found'], 404);
        }
    }

    public function create_content(Request $request) {
        $validator = Validator::make($request->all(), [
            'title' => 'required|max:255',
            'description' => 'required|max:255',
            'genre' => 'required|max:255',
            'content' => 'required|max:255',
            'length' => 'max:255',
            'episodes' => 'max:255',
        ]);

        if ($validator->fails()) {
            return response()->json([
                'success' => false,
                'message' => $validator->errors()->first()
            ], 422);
        }

        $movie = Content::create([
            'title' => $request->title,
            'description' => $request->description,
            'genre' => $request->genre,
            'content' => $request->content,
            'length' => $request->length,
            'episodes' => $request->episodes,
        ]);

        return response()->json([
            'success' => true,
            'data' => $movie,
        ]);
    }

    public function delete_content(Request $request) {
        $validator = Validator::make($request->all(), [
            'content_id' => 'required|max:255',
        ]);

        if ($validator->fails()) {
            return response()->json([
                'success' => false,
                'message' => $validator->errors()->first()
            ], 422);
        }

        $data = Content::where('id', $request->content_id)->delete();
        return response()->json([
            'success' => true,
            'data' => $data,
        ]);
    }
}
