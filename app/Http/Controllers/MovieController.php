<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Movie;

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
}
