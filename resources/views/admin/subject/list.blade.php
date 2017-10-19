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
                            <table class="table table-striped table-bordered dt-responsive nowrap"
                                   cellspacing="0" width="100%">
                                <thead>
                                <tr>
                                    <th>ID</th>
                                    <th>Mã môn học</th>
                                    <th>Tên môn học</th>
                                    <th>Mã lớp môn học</th>
                                    <th>Giảng viên</th>
                                    <th>Chi tiết</th>
                                </tr>
                                </thead>
                                <tbody>
                                @if(count($subjects)>0)
                                    @foreach($subjects as $item)
                                        <tr>
                                            <td>{{ $item->id }}</td>
                                            <td>{{ $item->code }}</td>
                                            <td>{{ $item->name }}</td>
                                            <td>{{ $item->subject_class_code }}</td>
                                            <td>{{ $item->teacher_name }}</td>
                                            <td><a href="{{ route('subject.detail', $item->id) }}" class="btn btn-info"><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span>&nbsp;Xem</a></td>
                                        </tr>
                                    @endforeach
                                @else
                                    <td colspan="6">Không có dữ liệu</td>
                                @endif
                                </tbody>
                            </table>

                        </div>
                    </div>
                    {{ $subjects->links() }}
                </div>
            </div>
        </div>
    </div>
@endsection
