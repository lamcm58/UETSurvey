@extends('admin.layouts.master')

@section('content')
    <div class="right_col" role="main">
        <div class="">
            <div class="row">
                <div class="col-md-12 col-sm-12 col-xs-12">
                    <div class="x_panel">
                        @if ($message = Session::get('success'))
                            <div class="alert alert-success" role="alert">
                                {{ Session::get('success') }}
                            </div>
                        @endif

                        @if ($message = Session::get('error'))
                            <div class="alert alert-danger" role="alert">
                                {{ Session::get('error') }}
                            </div>
                        @endif
                        <div class="x_title">
                            <h2>
                                Danh sách môn học
                            </h2>
                            <div class="clearfix"></div>
                        </div>

                        <div class="x_content">
                            <ul>
                                @foreach($subjects as $subject)
                                    <li><a href=""><h4>{{ str_replace(' ', '', $subject->subject_class_code) }}
                                                - {{ $subject->name }} - {{ $subject->teacher_name }}</h4></a></li>
                                @endforeach
                            </ul>
                        </div>
                        {{ $subjects->links() }}
                    </div>
                </div>
            </div>
        </div>
@endsection
