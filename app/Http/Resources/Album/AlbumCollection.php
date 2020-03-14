<?php

namespace App\Http\Resources\Album;

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
            'detail' => route('album.show', $this->id)
        ];
    }
}
