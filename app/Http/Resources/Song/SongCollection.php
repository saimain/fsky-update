<?php

namespace App\Http\Resources\Song;

use Illuminate\Http\Resources\Json\JsonResource;

class SongCollection extends JsonResource
{
    /**
     * Transform the resource collection into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array
     */
    public function toArray($request)
    {
        return [
            'id' => $this->id,
            'cover' => $this->cover,
            'name' => $this->name,
            'artist' => $this->artist->name,
            'category' => $this->category->name,
            'album' => $this->album->name,
            'artist' => [
                'artist_name' => $this->artist->name,
                'artist_detail' => route('artist.show', $this->artist->id),
            ],
            'category' => [
                'category_name' => $this->category->name,
                'category_detail' => route('category.show', $this->category->id),
            ],
            'album' => [
                'album_name' => $this->album->name,
                'album_detail' => route('album.show', $this->album->id),
            ],
            'lyric' => $this->lyric,
            'source' => $this->source,
            'detail' => route('song.show', $this->id)
        ];
    }
}
