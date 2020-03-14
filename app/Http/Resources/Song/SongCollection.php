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
            'detail' => route('song.show', $this->id)
        ];
    }
}
