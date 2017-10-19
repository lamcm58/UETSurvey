@extends('admin.layouts.master')

@section('content')
    <div class="right_col" role="main">
        <div class="">
            <div class="row">
                <div class="col-md-10 col-xs-12">
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
                            <h2>Thêm dữ liệu sinh viên</h2>
                            <div class="clearfix"></div>
                        </div>
                        <div>
                            <h4>Thêm danh sách sinh viên</h4>
                            <form action="{{ route('student.importList') }}" method="post" enctype="multipart/form-data">
                                {{ csrf_field() }}
                                <div class="x_panel">
                                    <input type="file" class="form-control" name="student_file" />
                                    <div class="ln_solid"></div>
                                    <div class="form-group">
                                        <button type="submit" class="btn btn-primary">Nhập</button>
                                    </div>
                                </div>
                            </form>
                        </div>
                        <hr/>
                        <div>
                            <h4>Thêm dữ liệu đăng ký môn học</h4>
                            <form action="{{ route('student.importList') }}" method="post" enctype="multipart/form-data">
                                {{ csrf_field() }}
                                <div class="x_panel">
                                    <input type="file" class="form-control" name="data_file" />
                                    <div class="ln_solid"></div>
                                    <div class="form-group">
                                        <button type="submit" class="btn btn-primary">Nhập</button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
