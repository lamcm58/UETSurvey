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
                            <form action="{{ route('question.update', [$survey->id, $question->id]) }}" method="post">
                                {{ csrf_field() }}
                                <div class="x_panel">
                                    <div class="form-group">
                                        <label for="question_type">Loại câu hỏi <span style="color: red;">*</span></label>
                                        <select name="question_type" id="question_type" class="form-control">
                                            <option value="">Chọn loại câu hỏi</option>
                                            <option value="1" {{ $question->question_type==1?'selected':'' }}>Loại 1</option>
                                            <option value="2" {{ $question->question_type==2?'selected':'' }}>Loại 2</option>
                                        </select>
                                        @if($errors->first('question_type'))
                                            <p class="text-danger">{{$errors->first('question_type')}}</p>
                                        @endif
                                    </div>
                                    <div class="form-group">
                                        <label for="question_content">Nội dung câu hỏi <span style="color: red;">*</span></label>
                                        <textarea class="form-control" name="question_content" id="question_content" cols="30" rows="5" placeholder="Nội dung câu hỏi">{{ $question->question_content }}</textarea>
                                        @if($errors->first('question_content'))
                                            <p class="text-danger">{{$errors->first('question_content')}}</p>
                                        @endif
                                    </div>
                                    <div class="form-group">
                                        <label for="question_category">Danh mục câu hỏi <span style="color: red;">*</span></label>
                                        <textarea class="form-control" name="question_category" id="question_category" cols="30" rows="5" placeholder="Danh mục câu hỏi">{{ $question->question_category }}</textarea>
                                        @if($errors->first('question_category'))
                                            <p class="text-danger">{{$errors->first('question_category')}}</p>
                                        @endif
                                    </div>
                                    <div class="form-group">
                                        <button type="submit" class="btn btn-primary">Cập nhật</button>
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
