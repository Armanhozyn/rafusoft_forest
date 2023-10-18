@extends('layouts.app')
@push('pg_btn')
    @can('create-category')
        <a href="{{ route('garden.create') }}" class="btn btn-sm btn-neutral">নতুন বাগান সৃজন</a>
    @endcan
@endpush
@section('content')
    <div class="row">
        <div class="col-md-12">
            <div class="card mb-5">
                <div class="card-header bg-transparent">
                    <div class="row">
                        <div class="col-lg-8">
                            <h3 class="mb-0">সৃজিত বাগানসমূহ</h3>
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
                                        <th scope="col">সনাক্তকরন নম্বর</th>
                                        <th scope="col">বাগানের ধরন</th>
                                        <th scope="col">জেলা</th>
                                        <th scope="col">উপজেলা</th>
                                        <th scope="col">ইউনিয়ন</th>
                                     
                                        <th scope="col">চুক্তিনামা</th>
                                        <th scope="col">Status</th>
                                        <th scope="col">Created at</th>
                                        <th scope="col" class="text-center">Action</th>
                                    </tr>
                                </thead>
                                <tbody class="list">
                                    @foreach ($categories as $category)
                                        <tr>
                                            <th scope="row">
                                                {{ $category->id }}
                                            </th>
                                            <th scope="row">
                                                {{ $category->garden_information->garden_type->name }}
                                            </th>
                                            
                                            <th scope="row">
                                                {{ $category->garden_information->district->name }}
                                            </th>
                                            <th scope="row">
                                                {{ $category->garden_information->thana->name }}
                                            </th>
                                            <th scope="row">
                                                {{-- {{ $category->garden_information->garden_type->name }} --}}
                                            </th>
                                            <th scope="row">

                                                @if($category->agreement_attachment)
                                                <a download="garden_creation_agreement_{{ $category->agreement_attachment }}" href="/uploads/agreements/{{ $category->agreement_attachment }}">ডাউনলোড</a>
                                                @else
                                                <a href="/garden/agree"></a>
                                                @endif
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
                                                {{ $category->created_at->diffForHumans() }}
                                            </td>
                                            <td class="text-center">
                                                @can('destroy-category')
                                                    {!! Form::open([
                                                        'route' => ['category.destroy', $category],
                                                        'method' => 'delete',
                                                        'class' => 'd-inline-block dform',
                                                    ]) !!}
                                                @endcan

                                                @can('update-category')
         {{--                                            <a class="btn btn-info btn-sm m-1" data-toggle="tooltip"
                                                        data-placement="top" title="Edit category details"
                                                        href="{{ route('category.edit', $category) }}">
                                                        <i class="fa fa-edit" aria-hidden="true"></i>
                                                    </a> --}}
                                                @endcan
                                                @can('destroy-category')
                                                    <button type="submit" class="btn delete btn-danger btn-sm m-1"
                                                        data-toggle="tooltip" data-placement="top" title="Delete category"
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
                                            {{ $categories->links() }}
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
