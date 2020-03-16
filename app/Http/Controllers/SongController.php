<?php

namespace App\Http\Controllers;

use App\User;
use App\Model\Song;
use App\Model\Album;
use App\Model\Artist;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class SongController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $songs = Song::paginate(10);
        $albums = Album::all();
        $artists = Artist::all();
        $users = User::all();
        $lastest_song = DB::table('songs')->latest('updated_at')->first();
        $lastest_album = DB::table('albums')->latest('updated_at')->first();
        $lastest_artist = DB::table('artists')->latest('updated_at')->first();
        $lastest_user = DB::table('users')->latest('updated_at')->first();
        return view('admin.song.collection', compact('songs', 'albums', 'artists', 'users', 'lastest_song', 'lastest_album', 'lastest_artist', 'lastest_user'));
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
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Model\Song  $song
     * @return \Illuminate\Http\Response
     */
    public function show(Song $song)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Model\Song  $song
     * @return \Illuminate\Http\Response
     */
    public function edit(Song $song)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Model\Song  $song
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Song $song)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Model\Song  $song
     * @return \Illuminate\Http\Response
     */
    public function destroy(Song $song)
    {
        $song->delete();
        return redirect('/dashboard/song');
    }
}
