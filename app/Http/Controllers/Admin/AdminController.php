<?php

namespace App\Http\Controllers\Admin;

use App\User;
use App\Model\Song;
use App\Model\Album;
use App\Model\Artist;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Http\Controllers\Controller;
use App\Model\Category;

class AdminController extends Controller
{
    public function dashboard()
    {
        $songs = Song::all();
        $albums = Album::all();
        $artists = Artist::all();
        $users = User::all();
        $categories = Category::all();
        $lastest_song = DB::table('songs')->latest('updated_at')->first();
        $lastest_album = DB::table('albums')->latest('updated_at')->first();
        $lastest_artist = DB::table('artists')->latest('updated_at')->first();
        $lastest_user = DB::table('users')->latest('updated_at')->first();
        $recent_songs = Song::with('artist', 'album')->orderBy('id', 'desc')->take(10)->get();
        return view('admin.dashboard', compact('categories', 'songs', 'albums', 'artists', 'users', 'lastest_song', 'lastest_album', 'lastest_artist', 'lastest_user', 'recent_songs'));
    }

    public function search(Request $request)
    {

        $albums = Album::all();
        $artists = Artist::all();
        $users = User::all();
        $categories = Category::all();
        $lastest_song = DB::table('songs')->latest('updated_at')->first();
        $lastest_album = DB::table('albums')->latest('updated_at')->first();
        $lastest_artist = DB::table('artists')->latest('updated_at')->first();
        $lastest_user = DB::table('users')->latest('updated_at')->first();
        $recent_songs = Song::with('artist', 'album')->orderBy('id', 'desc')->take(10)->get();
        $search = $request->get('search-data');
        $songs = Song::with('artist', 'album')->where('name', 'like', '%' . $search . '%')->paginate(10);
        return view('admin.song.collection', compact('categories', 'songs', 'albums', 'artists', 'users', 'lastest_song', 'lastest_album', 'lastest_artist', 'lastest_user', 'recent_songs'));
    }
}
