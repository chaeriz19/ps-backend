<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;
use App\Models\Serie;



class serieController extends Controller
{
    // return all series in database
    // route: api/series/all
    public function all() {
        $data = Serie::all();
        return response()->json($data);
    }

    // return all series sorted by creation data
    // route: api/series/latest
    public function latest() {
        $data = Serie::orderBy('created_at', 'desc')->get();
        return response()->json($data);
    }

    // search function
    // return everything that starts with the term passed via request
    public function search(Request $request) {
        $request->validate([
            'search' => 'required|max:50'
        ]);
        $term = $request->search;
        return response()->json(['data'=> Serie::where('title', 'LIKE', "$term%")->get(), 'term'=> $request->search]);
    }

    // for infinity scroll, je kan page nummer meegeven en de arrays combineren 
    // in de frontend
    // route: api/series/page
    public function page_control(Request $request) {

        $request->validate([
            'page' => 'required',
        ]);

        $page = $request->page;
        $perPage = 10;

        $data = Serie::orderBy('created_at', 'desc')
                    ->skip(($page - 1) * $perPage)
                    ->take($perPage)
                    ->get();

        return response()->json($data);
    }

    public function add_favorite(request $request) {
        $request->validate([
            'user_id' =>'required',
            'serie_id' =>'required',
        ]);

        $user = User::find($request->get('user_id'));
        $serie = Serie::find($request->get('serie_id'));  

        // check eerst of die al gafavorite is, zoja niet meer doen

        $user->serie_favorites()->attach($serie);

        // send positive json response

        return response()->json([
            'success' => true,
            'message' => 'User favorited serie successfully',
        ]);

    }

    public function remove_favorite(request $request) {
        $request->validate([
            'user_id' =>'required',
            'serie_id' =>'required',
        ]);

        $user = User::find($request->get('user_id'));
        $serie = Serie::find($request->get('serie_id'));  

        // check eerst of die al gafavorite is, zoja niet meer doen

        $user->favorites()->detach($serie);

        // send positive json response

        return response()->json([
           'success' => true,
           'message' => 'User unfavorited serie successfully',
        ]);
    }

    public function favorite_series(request $request) {
        $request->validate([
            'user_id' =>'required',
        ]);

        $user = User::find($request->get('user_id'));
        $favorites = $user->favorites;
        

        return response()->json(
            $favorites);
    }
}