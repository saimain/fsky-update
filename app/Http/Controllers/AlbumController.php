<?php

namespace App\Http\Controllers;

use App\User;
use App\Model\Song;
use App\Model\Album;
use App\Model\Artist;
use App\Model\Category;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class AlbumController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $songs = Song::paginate(10);
        $albums = Album::paginate(10);
        $artists = Artist::all();
        $users = User::all();
        $lastest_song = DB::table('songs')->latest('updated_at')->first();
        $lastest_album = DB::table('albums')->latest('updated_at')->first();
        $lastest_artist = DB::table('artists')->latest('updated_at')->first();
        $lastest_user = DB::table('users')->latest('updated_at')->first();
        return view('admin.album.collection', compact('songs', 'albums', 'artists', 'users', 'lastest_song', 'lastest_album', 'lastest_artist', 'lastest_user'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $request->validate([
            'name' => 'required',
            'artist_id' => 'required',
            'cover' => 'required'
        ]);


        $cover = $request->file('cover');

        $coverExt = strtoupper($cover->getClientOriginalExtension());

        // $new_song_path = rand() . '.' . $source->getClientOriginalExtension();
        // $new_cover_path = rand() . '.' . $cover->getClientOriginalExtension();

        $new_cover_path = rand() . '.' . $coverExt;

        $cover->move(public_path('source/album/cover'), $new_cover_path);



        $new_album = new Album();
        $new_album->name = $request->name;
        $new_album->artist_id = $request->artist_id;
        $new_album->about = $request->about;
        $new_album->cover = $new_cover_path;
        $new_album->save();

        return redirect('/dashboard/albums');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Model\Album  $album
     * @return \Illuminate\Http\Response
     */
    public function show(Album $album)
    {
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Model\Album  $album
     * @return \Illuminate\Http\Response
     */
    public function edit(Album $album)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Model\Album  $album
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Album $album)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Model\Album  $album
     * @return \Illuminate\Http\Response
     */
    public function destroy(Album $album)
    {
        $album->delete();
        return redirect('/dashboard/albums');
    }
}
