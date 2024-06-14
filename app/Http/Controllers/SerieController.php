<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\User;

class SerieController extends Controller
{
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
