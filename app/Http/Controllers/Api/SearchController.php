<?php

namespace App\Http\Controllers\Api;

use App\Model\Song;
use App\Model\Artist;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Http\Resources\Song\SongCollection;

class SearchController extends Controller
{
    public function Search(Request $request)
    {
        // $data = Artist::find($request);
        // return SongCollection::collection($songs);
        $name = $request->name;
        $songs = Artist::query()->where('name', 'LIKE', "%{$name}%")->first();
        // $songs = Artist::find(1);
        return SongCollection::collection($songs->song()->get());
    }
}
