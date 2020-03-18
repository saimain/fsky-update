<?php

namespace App\Http\Resources\Album;

use App\Http\Resources\Song\SongCollection;
use Illuminate\Http\Resources\Json\JsonResource;

class AlbumCollection extends JsonResource
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
            'about' => $this->about,
            'artist' => [
                'name' => $this->artist->name,
                'detail' => route('artist.show', $this->id),
            ],
            'condition' => $this->song()->count() == 0 ? false : true,
            'songs' => SongCollection::collection($this->song()->get()),
            'detail' => route('album.show', $this->id)
        ];
    }
}
