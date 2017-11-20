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
                            <h2>Thêm môn học</h2>
                            <div class="clearfix"></div>
                        </div>
                        <div>
                            <h4>Thêm bằng file</h4>
                            <form action="{{ route('subject.importExcel') }}" method="post" enctype="multipart/form-data">
                                {{ csrf_field() }}
                                <div class="x_panel">
                                    <input type="file" class="form-control" name="subject_file" />
                                    <div class="ln_solid"></div>
                                    <div class="form-group">
                                        <button type="submit" class="btn btn-primary">Nhập</button>
                                    </div>
                                </div>
                            </form>
                        </div>
                        <hr/>
                        <div>
                            <h4>Thêm thủ công</h4>
                            <form action="{{ route('subject.addSubject') }}" method="post">
                                {{ csrf_field() }}
                                <div class="x_panel">
                                    <div class="form-group">
                                        <label for="code">Mã môn học <span style="color: red;">*</span></label>
                                        <input type="text" name="code" class="form-control" id="code" placeholder="Mã môn học">
                                        @if($errors->first('code'))
                                            <p class="text-danger">{{$errors->first('code')}}</p>
                                        @endif
                                    </div>
                                    <div class="form-group">
                                        <label for="name">Tên môn học <span style="color: red;">*</span></label>
                                        <input type="text" name="name" class="form-control" id="name" placeholder="Tên môn học">
                                        @if($errors->first('name'))
                                            <p class="text-danger">{{$errors->first('name')}}</p>
                                        @endif
                                    </div>
                                    <div class="form-group">
                                        <label for="category">Thuộc khoa <span style="color: red;">*</span></label>
                                        <select name="category_id" id="category" class="form-control">
                                            <option value="">Chọn khoa</option>
                                            @foreach($categories as $category)
                                                <option value="{{ $category->id }}">{{ $category->category_name }}</option>
                                            @endforeach
                                        </select>
                                        @if($errors->first('category_id'))
                                            <p class="text-danger">{{$errors->first('category_id')}}</p>
                                        @endif
                                    </div>
                                    <div class="form-group">
                                        <label for="teacher_name">Giảng viên <span style="color: red;">*</span></label>
                                        <input type="text" name="teacher_name" class="form-control" id="teacher_name" placeholder="Giảng viên">
                                        @if($errors->first('teacher_name'))
                                            <p class="text-danger">{{$errors->first('teacher_name')}}</p>
                                        @endif
                                    </div>
                                    <div class="form-group">
                                        <button type="submit" class="btn btn-primary">Thêm</button>
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
