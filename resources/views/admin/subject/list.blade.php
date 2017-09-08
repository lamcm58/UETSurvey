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
                            <form action="{{ route('category.addSurvey', $cate_id) }}" method="post">
                                {{ csrf_field() }}
                                <h4>Thêm survey cho các môn học của khoa</h4>
                                <div class="col-md-6">
                                    <select name="survey_id" id="" class="form-control" required>
                                        <option value="">Chọn survey</option>
                                        @foreach($surveys as $survey)
                                            <option value="{{ $survey->id }}">{{ $survey->survey_name }}</option>
                                        @endforeach
                                    </select>
                                </div>
                                <div class="col-md-6">
                                    <button type="submit" class="btn btn-primary">Thêm</button>
                                </div>
                            </form>
                            <hr>
                        <div class="x_content">
                            <ul>
                                @foreach($subjects as $subject)
                                    <li><a href="{{ route('subject.detail', $subject->id) }}"><h4>{{ str_replace(' ', '', $subject->subject_class_code) }}
                                                - {{ $subject->name }} - {{ $subject->teacher_name }}</h4></a></li>
                                @endforeach
                            </ul>
                        </div>
                    </div>
                    {{ $subjects->links() }}
                </div>
            </div>
        </div>
    </div>
@endsection
