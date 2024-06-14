<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Movie;
use App\Models\User;


class MovieController extends Controller
{
    // return all movies in database
    // route: api/movies/all
    public function all() {
        $data = Movie::all();
        return response()->json($data);
    }

    // return all movies sorted by creation data
    // route: api/movies/latest
    public function latest() {
        $data = Movie::orderBy('created_at', 'desc')->get();
        return response()->json($data);
    }

    // search function
    // return everything that starts with the term passed via request
    public function search(Request $request) {
        $request->validate([
            'search' => 'required|max:50'
        ]);
        $term = $request->search;
        return response()->json(['data'=> Movie::where('title', 'LIKE', "$term%")->get(), 'term'=> $request->search]);
    }

    // for infinity scroll, je kan page nummer meegeven en de arrays combineren 
    // in de frontend
    // route: api/movies/page
    public function page_control(Request $request) {

        $request->validate([
            'page' => 'required',
        ]);

        $page = $request->page;
        $perPage = 10;

        $data = Movie::orderBy('created_at', 'desc')
                    ->skip(($page - 1) * $perPage)
                    ->take($perPage)
                    ->get();

        return response()->json($data);
    }

    public function add_favorite(request $request) {
        $request->validate([
            'user_id' =>'required',
            'movie_id' =>'required',
        ]);

        $user = User::find($request->get('user_id'));
        $movie = Movie::find($request->get('movie_id'));  

        // check eerst of die al gafavorite is, zoja niet meer doen

        $user->movie_favorites()->attach($movie);

        // send positive json response

        return response()->json([
            'success' => true,
            'message' => 'User favorited movie successfully',
        ]);

    }

    public function remove_favorite(request $request) {
        $request->validate([
            'user_id' =>'required',
            'movie_id' =>'required',
        ]);

        $user = User::find($request->get('user_id'));
        $movie = Movie::find($request->get('movie_id'));  

        // check eerst of die al gafavorite is, zoja niet meer doen

        $user->favorites()->detach($movie);

        // send positive json response

        return response()->json([
           'success' => true,
           'message' => 'User unfavorited movie successfully',
        ]);
    }

    public function get_favorites(request $request) {
        $request->validate([
            'user_id' =>'required',
        ]);

        $user = User::find($request->get('user_id'));
        $favorites = $user->favorites;

        return response()->json(
            $favorites);
    }
}
