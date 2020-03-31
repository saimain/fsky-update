@extends('admin.layouts.app')
@section('page-title','Song Collection | FSKY-Music')
@section('page-name','Song Collection')


@section('css')
<link href="https://cdn.jsdelivr.net/npm/select2@4.0.13/dist/css/select2.min.css" rel="stylesheet" />
<link rel="stylesheet"
    href="https://cdnjs.cloudflare.com/ajax/libs/select2-bootstrap-theme/0.1.0-beta.10/select2-bootstrap.css">
@endsection

@section('content')

@if ($errors->any())
<div class="alert alert-danger">
    <ul>
        @foreach ($errors->all() as $error)
        <li>{{ $error }}</li>
        @endforeach
    </ul>
</div>
@endif

<div class="container-fluid mt--6">
    <div class="row">
        <div class="col-xl-12">
            <div class="card">
                <!-- Card header -->
                <div class="card-header border-0">
                    <div class="row">
                        <div class="col-6">
                            <h3 class="mb-0">Song Colleciton</h3>
                        </div>
                        <div class="col-6 text-right">
                            <button href="#" class="btn btn-sm btn-neutral btn-round btn-icon" style=""
                                data-toggle="tooltip" data-original-title="Add New Song" id="add-new">
                                <span class="btn-inner--icon"><i class="fas fa-plus"></i></span>
                                <span class="btn-inner--text">Add New Song</span>
                            </button>
                        </div>
                    </div>
                </div>
                <!-- Light table -->
                <div class="table-responsive">
                    <table id="data-table" class="table align-items-center table-flush">
                        <thead class="thead-light">
                            <tr>
                                <th>No</th>
                                <th>Cover</th>
                                <th>Song Name</th>
                                <th>Artist</th>
                                <th>Album</th>
                                <th>Date</th>
                                <th></th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach ($songs as $song)
                            @if ($songs->count() > 0 )
                            <tr>
                                <td>
                                    <b>{{$loop->index+1}}</b>
                                </td>
                                <td>
                                    <img src="{{asset('source/song/cover/'.$song->cover)}}"
                                        class="avatar rounded-circle">
                                </td>
                                <td class="table-user">
                                    <b>{{$song->name}}</b>
                                </td>
                                <td class="">
                                    <b>{{$song->artist->name}}</b>
                                </td>
                                <th><b>
                                        @if ($song->album)
                                        {{$song->album->name}}
                                        @else
                                        Single Song
                                        @endif
                                    </b></th>
                                <td>
                                    <span class="text-muted">{{ $song->updated_at }}</span>
                                </td>
                                <td class="">
                                    <button style="max-width:5px" class="btn btn-link detail-btn table-action"
                                        value="{{$song->id}}" data-id="{{$song->id}}"
                                        data-cover="{{asset('source/song/cover/'.$song->cover)}}"
                                        data-name="{{$song->name}}" data-artist="{{$song->artist->name}}"
                                        @if($song->album)
                                        data-album="{{$song->album->name}}"
                                        @endif

                                        data-lyric="{{$song->lyric}}" data-source="{{$song->source}}">
                                        <i class="fas fa-expand" data-toggle="tooltip"
                                            data-original-title="View Song"></i>
                                    </button>
                                    <form action="/dashboard/songs/{{$song->id}}" id="delete-form" method="POST"
                                        class="d-inline">
                                        {{ csrf_field() }}
                                        {{ method_field('DELETE') }}
                                        <button onclick="document.getElementById('delete-form').submit()"
                                            style="max-width:5px" class="btn btn-link table-action table-action-delete"
                                            data-toggle="tooltip" data-original-title="Delete Song">
                                            <i class="fas fa-trash"></i>
                                        </button>
                                    </form>
                                </td>
                            </tr>
                            @endif
                            @endforeach
                        </tbody>
                    </table>
                    <div class="float-right mr-3">
                        {{ $songs->links() }}
                    </div>
                </div>
            </div>
        </div>

    </div>


    {{-- view song modal --}}
    <div class="modal fade" id="detailModal" tabindex="-1" role="dialog" aria-labelledby="detailModalLabel"
        aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="detailModalLabel">Song Details</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div class="card shadow-none">
                        <!-- Card image -->
                        <img class="cover card-img-top" src="" style="" alt="">

                        <!-- Card body -->
                        <div class="card-body">
                            <h5 class="h2 card-title mb-0 song-title"></h5>
                            <small class="text-muted song-artist"></small>
                            <small class="text-muted song-album"></small>
                            <p class="card-text mt-4 song-lyric"></p>
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-primary" data-dismiss="modal">Close</button>
                </div>
            </div>
        </div>
    </div>



    <!-- Add new song Modal -->
    <div class="modal fade" id="add-new-modal" data-backdrop="static" tabindex="-1" role="dialog"
        aria-labelledby="staticBackdropLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="staticBackdropLabel">Add New Song</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <form action="{{ route('songs.store') }}" id="upload-song-form" method="post"
                        enctype="multipart/form-data">
                        @csrf


                        <div class="form-group row">
                            <input class="form-control" name="name" type="text" value="" placeholder="Enter Song Title"
                                id="">
                        </div>
                        <div class="form-group row">
                            <select class="artist" style=" width: 120px;" name="artist_id">
                                @foreach ($artists as $artist)
                                <option value=""></option>
                                <option value="{{$artist->id}}">{{ $artist->name }}</option>
                                @endforeach
                            </select>
                        </div>
                        <div class="form-group row">
                            <select class="album" style="width: 120px;" name="album_id">
                                @foreach ($albums as $album)
                                <option value=""></option>
                                <option value="{{$album->id}}">{{ $album->name }}</option>
                                @endforeach
                            </select>
                        </div>
                        <div class="form-group row">
                            <input class="form-control" type="text" name="lyric" value=""
                                placeholder="Enter Song Lyrics" id="">
                        </div>
                        <div class="form-group row">
                            <div class="custom-file">
                                <input type="file" name="cover" class="custom-file-input" id="song-cover" lang="en">
                                <label class="custom-file-label" for="song-cover">Select Song Cover Photo</label>
                            </div>
                        </div>
                        <div class="form-group row">
                            <div class="custom-file">
                                <input type="file" name="source" class="custom-file-input" id="song-file" lang="en">
                                <label class="custom-file-label" for="song-file">Select Song .mp3</label>
                            </div>
                        </div>

                    </form>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                    <button type="button" class="btn btn-primary submit">Upload</button>
                </div>
            </div>
        </div>
    </div>
    @endsection

    @section('script')
    <script src="https://cdn.jsdelivr.net/npm/select2@4.0.13/dist/js/select2.min.js"></script>
    <script>
        $(document).ready(function(){


            $('.artist').select2({
                theme:'bootstrap',
                placeholder: "Select Artist",
          
            });
            $('.album').select2({
                theme:'bootstrap',
                placeholder: "Select Album",
          
            });
            $('#add-new').on('click',function(){
                $("#add-new-modal").modal('show');
            });


            $('.submit').on('click',function(){
                $('#upload-song-form').submit();
            });




            $('.detail-btn').on('click',function(){
                
                var id = $(this).data('id');
                var cover = $(this).data('cover');
                var name = $(this).data('name');
                var artist = $(this).data('artist');
                var album = $(this).data('album');
                var lyric = $(this).data('lyric');
                var source = $(this).data('source');    
                $('#detailModal').modal('show');
                $('.cover').attr('src',cover);
                $('.song-title').text(name);
                $('.song-artist').text('Artist : '+ artist + ' | ');
                $('.song-album').text('Album : '+ album );
                $('.song-lyric').text(lyric);
            });

        });
         
    </script>

    @endsection