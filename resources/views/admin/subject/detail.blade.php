@extends('admin.layouts.master')

@section('content')
    <div class="right_col" role="main">
        <div class="">
            <div class="row">
                <div class="col-xs-12">
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
                            <h2><h4>{{ str_replace(' ', '', $subject->subject_class_code) }}
                                    - {{ $subject->name }} - {{ $subject->teacher_name }}</h4></h2>
                            <div class="clearfix"></div>
                        </div>
                        <!-- Danh sách survey -->
                            <h3>Danh sách survey</h3>
                            <hr>
                            <ul>
                                @if(count($selected)>0)
                                    @foreach($selected as $item)
                                        <li><a href="{{ route('survey.preview', $item->survey_id) }}"><h4>{{ $item->survey_name }}</h4></a></li>
                                    @endforeach
                                @else
                                    <h4>Hiện tại môn học này chưa có survey nào cả.</h4>
                                @endif
                            </ul>

                            <!-- End -->
                            <hr>
                            <!-- Danh sách sinh viên -->
                            <h3>Danh sách sinh viên</h3>
                            <hr>
                            <ul>
                                @if(count($students)>0)
                                    @foreach($students as $item)
                                        <li><h4>{{ $item->student_code }} - {{ $item->full_name }}</h4></li>
                                    @endforeach
                                @else
                                    <h4>Hiện tại môn học này chưa có sinh viên nào đăng ký.</h4>
                                @endif
                            </ul>
                        <!-- End -->
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
