<?php

namespace App\Http\Resources\Artist;

use App\Http\Resources\Song\SongCollection;
use App\Http\Resources\Album\AlbumCollection;
use Illuminate\Http\Resources\Json\JsonResource;

class ArtistResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array
     */
    public function toArray($request)
    {
        return [
            'id' => $this->id,
            'profile' => asset('source/artist/profile/' . $this->profile),
            'name' => $this->name,
            'album' => AlbumCollection::collection($this->album()->get()),
            'song' => SongCollection::collection($this->song()->get()),
        ];
    }
}
