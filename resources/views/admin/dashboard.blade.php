@extends('admin.layouts.app')
@section('page-title','Dashboard | FSKY-Music')
@section('page-name','Dashboard')


@section('content')

<!-- Page content -->
<div class="container-fluid mt--6">
    <div class="row">
        <div class="col-xl-12">
            <div class="card">
                <div class="card-header border-0">
                    <div class="row align-items-center">
                        <div class="col">
                            <h3 class="mb-0">Recent Songs</h3>
                        </div>
                        <div class="col text-right">
                            <a href="/dashboard/songs" class="btn btn-sm btn-primary">See all</a>
                        </div>
                    </div>
                </div>
                <div class="table-responsive">
                    <!-- Projects table -->
                    <table class="table align-items-center table-flush">
                        <thead class="thead-light">
                            <tr>
                                <th scope="col">Song Name</th>
                                <th scope="col">Artist</th>
                                <th scope="col">Album</th>
                                <th scope="col">Date</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach ($recent_songs as $song)
                            <tr>
                                <th scope="row">
                                    {{ $song->name }}
                                </th>
                                <td>
                                    {{ $song->artist->name }}
                                </td>
                                <td>
                                    @if ($song->album)
                                    {{ $song->album->name }}
                                    @else
                                    Single Song
                                    @endif
                                </td>
                                <td>
                                    {{ $song->updated_at}}
                                </td>
                            </tr>
                            @endforeach

                        </tbody>
                    </table>
                </div>
            </div>
        </div>

    </div>
    @endsection