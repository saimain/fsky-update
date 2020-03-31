@extends('admin.layouts.app')
@section('page-title','User Collection | FSKY-Music')
@section('page-name','User Collection')


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
                            <h3 class="mb-0">User Colleciton</h3>
                        </div>
                        <div class="col-6 text-right">
                            <button href="#" class="btn btn-sm btn-neutral btn-round btn-icon" style=""
                                data-toggle="tooltip" data-original-title="Add New Song" id="add-new">
                                <span class="btn-inner--icon"><i class="fas fa-plus"></i></span>
                                <span class="btn-inner--text">Add New User</span>
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
                                <th>Name</th>
                                <th>Email</th>
                                <th>Password</th>
                                <th>Date</th>
                                <th></th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach ($users as $user)
                            @if ($users->count() > 0 )
                            <tr>
                                <td>
                                    <b>{{$loop->index+1}}</b>
                                </td>
                                <td class="">
                                    <b>{{$user->name}}</b>
                                </td>
                                <td class="">
                                    <b>{{$user->email}}</b>
                                </td>
                                <td class="">
                                    <b>{{$user->password}}</b>
                                </td>
                                <td>
                                    <span class="text-muted">{{ $user->updated_at }}</span>
                                </td>
                                <td class="">
                                    <form action="/dashboard/users/{{$user->id}}" id="delete-form" method="POST"
                                        class="d-inline">
                                        {{ csrf_field() }}
                                        {{ method_field('DELETE') }}
                                        <button onclick="document.getElementById('delete-form').submit()"
                                            style="max-width:5px" class="btn btn-link table-action table-action-delete"
                                            data-toggle="tooltip" data-original-title="Delete User">
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
                        {{ $users->links() }}
                    </div>
                </div>
            </div>
        </div>

    </div>





    <!-- Add new user Modal -->
    <div class="modal fade" id="add-new-modal" data-backdrop="static" tabindex="-1" role="dialog"
        aria-labelledby="staticBackdropLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="staticBackdropLabel">Add New Album</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <form action="{{ route('users.store') }}" id="upload-album-form" method="post"
                        enctype="multipart/form-data">
                        @csrf


                        <div class="form-group row">
                            <input class="form-control" name="name" type="text" value="" placeholder="Enter Album Name"
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
                            <input class="form-control" type="text" name="about" value=""
                                placeholder="Enter Album About" id="">
                        </div>
                        <div class="form-group row">
                            <div class="custom-file">
                                <input type="file" name="cover" class="custom-file-input" id="album-cover" lang="en">
                                <label class="custom-file-label" for="album-cover">Select Album Cover Photo</label>
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
         

            $('#add-new').on('click',function(){
                $("#add-new-modal").modal('show');
            });


            $('.submit').on('click',function(){
                $('#upload-album-form').submit();
            });




            $('.detail-btn').on('click',function(){
                
                var id = $(this).data('id');
                var cover = $(this).data('cover');
                var name = $(this).data('name');
                var artist = $(this).data('artist');
                var about = $(this).data('about');
                var songcount = $(this).data('songcount');
                $('#detailModal').modal('show');
                $('.cover').attr('src',cover);
                $('.album-title').text(name);   
                $('.album-artist').text('Artist : '+ artist + ' | ' );
                $('.album-songcount').text('Song Count : '+ songcount );
                $('.album-about').text(about);
            });

        });
         
    </script>

    @endsection