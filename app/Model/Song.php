<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class Song extends Model
{
    protected $fillable = [
        'name', 'artist_id', 'category_id', 'album_id', 'cover', 'source', 'lyric'
    ];

    public function category()
    {
        return $this->belongsTo('App\Model\Category');
    }

    public function album()
    {
        return $this->belongsTo('App\Model\Album');
    }

    public function artist()
    {
        return $this->belongsTo('App\Model\Artist');
    }
}
