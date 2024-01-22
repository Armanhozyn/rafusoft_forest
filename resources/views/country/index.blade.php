@extends('layouts.app')
@push('pg_btn')
    @can('create-category')
        <a href="{{ route('country.create') }}" class="btn btn-sm btn-neutral">
            নতুন দেশ তৈরি করুন</a>
    @endcan
@endpush
@section('content')
    <div class="row">
        <div class="col-md-12">
            <div class="card mb-5">
                <div class="card-header bg-transparent">
                    <div class="row">
                        <div class="col-lg-8">
                            <h3 class="mb-0">
                                সব দেশ</h3>
                        </div>
                        <div class="col-lg-4">
                            {!! Form::open(['route' => 'users.index', 'method' => 'get']) !!}
                            <div class="form-group mb-0">
                                {{ Form::text('search', request()->query('search'), ['class' => 'form-control form-control-sm', 'placeholder' => 'Search users']) }}
                            </div>
                            {!! Form::close() !!}
                        </div>
                    </div>
                </div>
                <div class="card-body p-0">
                    <div class="table-responsive">
                        <div>
                            <table class="table table-hover align-items-center">
                                <thead class="thead-light">
                                    <tr>
                                        <th scope="col">Name</th>
                                        <th scope="col">Added by</th>
                                        <th scope="col">Status</th>
                                        <th scope="col">Created at</th>
                                        <th scope="col" class="text-center">Action</th>
                                    </tr>
                                </thead>
                                <tbody class="list">
                                    @foreach ($countries as $country)
                                        <tr>
                                            <th scope="row">
                                                {{ $country->name }}
                                            </th>
                                            <td class="budget">
                                                {{-- {{$category->user->name}} --}}
                                            </td>
                                            <td>
                                                {{-- @if ($category->status)
                                                    <span class="badge badge-pill badge-lg badge-success">Active</span>
                                                @else
                                                    <span class="badge badge-pill badge-lg badge-danger">Disabled</span>
                                                @endif --}}
                                            </td>
                                            <td>
                                                {{ $country->created_at->diffForHumans() }}
                                            </td>
                                            <td class="text-center">
                                                @can('destroy-country')
                                                    {!! Form::open([
                                                        'route' => ['country.destroy', $country],
                                                        'method' => 'delete',
                                                        'class' => 'd-inline-block dform',
                                                    ]) !!}
                                                @endcan

                                                @can('update-country')
                                                    <a class="btn btn-info btn-sm m-1" data-toggle="tooltip"
                                                        data-placement="top" title="Edit country details"
                                                        href="{{ route('country.edit', $country) }}">
                                                        <i class="fa fa-edit" aria-hidden="true"></i>
                                                    </a>
                                                @endcan
                                                @can('destroy-country')
                                                    <button type="submit" class="btn delete btn-danger btn-sm m-1"
                                                        data-toggle="tooltip" data-placement="top" title="Delete country"
                                                        href="">
                                                        <i class="fas fa-trash"></i>
                                                    </button>
                                                    {!! Form::close() !!}
                                                @endcan
                                            </td>
                                        </tr>
                                    @endforeach
                                </tbody>
                                <tfoot>
                                    <tr>
                                        <td colspan="6">
                                            {{ $countries->links() }}
                                        </td>
                                    </tr>
                                </tfoot>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
@push('scripts')
    <script>
        jQuery(document).ready(function() {
            $('.delete').on('click', function(e) {
                e.preventDefault();
                let that = jQuery(this);
                jQuery.confirm({
                    icon: 'fas fa-wind-warning',
                    closeIcon: true,
                    title: 'Are you sure!',
                    content: 'You can not undo this action.!',
                    type: 'red',
                    typeAnimated: true,
                    buttons: {
                        confirm: function() {
                            that.parent('form').submit();
                            //$.alert('Confirmed!');
                        },
                        cancel: function() {
                            //$.alert('Canceled!');
                        }
                    }
                });
            })
        })
    </script>
@endpush
