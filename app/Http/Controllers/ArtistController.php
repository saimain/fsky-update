<?php

namespace App\Http\Controllers;

use App\User;
use App\Model\Song;
use App\Model\Album;
use App\Model\Artist;
use App\Model\Category;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class ArtistController extends Controller
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
        $artists = Artist::paginate(10);
        $users = User::all();
        $categories = Category::all();
        $lastest_song = DB::table('songs')->latest('updated_at')->first();
        $lastest_album = DB::table('albums')->latest('updated_at')->first();
        $lastest_artist = DB::table('artists')->latest('updated_at')->first();
        $lastest_user = DB::table('users')->latest('updated_at')->first();
        return view('admin.artist.collection', compact('categories', 'songs', 'albums', 'artists', 'users', 'lastest_song', 'lastest_album', 'lastest_artist', 'lastest_user'));
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
            'profile' => 'required',
        ]);

        $profile = $request->file('profile');

        $profileExt = strtoupper($profile->getClientOriginalExtension());

        // $new_song_path = rand() . '.' . $source->getClientOriginalExtension();
        // $new_profile_path = rand() . '.' . $profile->getClientOriginalExtension();

        $new_profile_path = rand() . '.' . $profileExt;

        $profile->move(public_path('source/artist/profile'), $new_profile_path);


        $new_artist = new Artist();
        $new_artist->name = $request->name;
        $new_artist->profile = $new_profile_path;
        $new_artist->save();

        return redirect('/dashboard/artists');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Model\Artist  $artist
     * @return \Illuminate\Http\Response
     */
    public function show(Artist $artist)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Model\Artist  $artist
     * @return \Illuminate\Http\Response
     */
    public function edit(Artist $artist)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Model\Artist  $artist
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Artist $artist)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Model\Artist  $artist
     * @return \Illuminate\Http\Response
     */
    public function destroy(Artist $artist)
    {
        $artist->delete();
        return redirect('/dashboard/artists');
    }
}
