<?php

namespace App\Http\Controllers\Api;

use App\Model\Song;
use App\Model\Artist;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Http\Resources\ErrorResource;
use App\Http\Resources\Song\SongCollection;

class SearchController extends Controller
{
    public function Search(Request $request)
    {
        // $data = Artist::find($request);
        // return SongCollection::collection($songs);
        $name = $request->name;
        $artist = Artist::query()->where('name', $name)->first();

        if ($artist->count() > 0) {
            return SongCollection::collection($artist->song()->get());
        } else {
            $errors = ['error' => 'Artist not found'];
            return new ErrorResource($errors);
            // print_r($data);
        }
    }
}
