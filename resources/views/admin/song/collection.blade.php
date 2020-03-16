@extends('admin.layouts.app')
@section('page-title','Song Collection | FSKY-Music')
@section('page-name','Song Collection')



@section('content')



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
                            <a href="#" class="btn btn-sm btn-neutral btn-round btn-icon" data-toggle="tooltip"
                                data-original-title="Edit product">
                                <span class="btn-inner--icon"><i class="fas fa-plus"></i></span>
                                <span class="btn-inner--text">Add New Song</span>
                            </a>
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
                                    <img src="{{ $song->cover }}" class="avatar rounded-circle">
                                </td>
                                <td class="table-user">
                                    <b>{{$song->name}}</b>
                                </td>
                                <td class="">
                                    <b>{{$song->artist->name}}</b>
                                </td>
                                <td>
                                    <span class="text-muted">{{ $song->updated_at }}</span>
                                </td>
                                <td class="">
                                    <button style="max-width:5px" class="btn btn-link detail-btn table-action"
                                        value="{{$song->id}}" data-id="{{$song->id}}" data-cover="{{$song->cover}}"
                                        data-name="{{$song->name}}" data-artist="{{$song->artist}}"
                                        data-category="{{$song->category}}" data-album="{{$song->album}}"
                                        data-lyric="{{$song->lyric}}" data-source="{{$song->source}}">
                                        <i class="fas fa-expand" data-toggle="tooltip"
                                            data-original-title="View Song"></i>
                                    </button>
                                    <button style="max-width:5px" class="btn btn-link table-action"
                                        data-toggle="tooltip" data-original-title="Edit Song">
                                        <i class="fas fa-user-edit"></i>
                                    </button>
                                    <form action="/dashboard/song/{{$song->id}}" id="delete-form" method="POST"
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
                            @endforeach </tbody>
                    </table>
                    <div class="float-right mr-3">
                        {{ $songs->links() }}
                    </div>
                </div>
            </div>
        </div>

    </div>


    <!-- Modal -->
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
                    <img class="cover" src="" style="width:200px;" alt="">
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                    <button type="button" class="btn btn-primary">Save changes</button>
                </div>
            </div>
        </div>
    </div>

    @endsection

    @section('script')
    <script>
        $(document).ready(function(){

            $('.detail-btn').on('click',function(){
                
                var id = $(this).data('id');
                var cover = $(this).data('cover');
                var name = $(this).data('name');
                var artist = $(this).data('artist');
                var category = $(this).data('category');
                var album = $(this).data('album');
                var lyric = $(this).data('lyric');
                var source = $(this).data('source');    

                $('#detailModal').modal('show');
                $('.cover').attr('src',cover);
            });

        });
         
    </script>

    @endsection