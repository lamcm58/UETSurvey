@extends('admin.layouts.master')

@section('content')
    <div class="right_col" role="main">
        <div class="">
            <div class="row">
                <div class="col-md-12 col-xs-12">
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
                            <h2>Chỉnh sửa khảo sát</h2>
                            <div class="clearfix"></div>
                        </div>
                        <h4>Thông tin khảo sát</h4>
                        <form action="{{ route('survey.update', $survey->id) }}" method="post">
                            {{ csrf_field() }}
                            <div class="x_panel">
                                <div class="form-group">
                                    <label for="survey_code">Mã khảo sát</label>
                                    <input type="text" name="survey_code" class="form-control" id=survey_code" placeholder="Mã khảo sát" value="{{ $survey->survey_code }}" readonly>
                                    @if($errors->first('survey_code'))
                                        <p class="text-danger">{{$errors->first('survey_code')}}</p>
                                    @endif
                                </div>
                                <div class="form-group">
                                    <label for="survey_name">Tên khảo sát <span style="color: red;">*</span></label>
                                    <input type="text" name="survey_name" class="form-control" id="survey_name" placeholder="Tên khảo sát" value="{{ $survey->survey_name }}">
                                    @if($errors->first('survey_name'))
                                        <p class="text-danger">{{$errors->first('survey_name')}}</p>
                                    @endif
                                </div>
                                <div class="form-group">
                                    <label for="expired_day">Ngày hết hạn <span style="color: red;">*</span></label>
                                    <input type="text" name="expired_day" class="form-control" id="expired_day" placeholder="Ngày hết hạn" value="{{ date("d-m-Y", strtotime($survey->expired_day)) }}">
                                    @if($errors->first('expired_day'))
                                        <p class="text-danger">{{$errors->first('expired_day')}}</p>
                                    @endif
                                </div>
                                <hr/>
                                <h4>Danh sách câu hỏi</h4>
                                <a href="{{ route('question.add', $survey->id) }}" class="btn btn-success"><span class="glyphicon glyphicon-plus-sign" aria-hidden="true"></span> Thêm câu hỏi</a>
                                <table class="table table-striped table-bordered dt-responsive nowrap"
                                       cellspacing="0" width="100%">
                                    <thead>
                                    <tr>
                                        <th>STT</th>
                                        <th>Mã câu hỏi</th>
                                        <th>Nội dung câu hỏi</th>
                                        <th>Danh mục câu hỏi</th>
                                        <th>Sửa</th>
                                        <th>Xóa</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <?php $i = 1;?>
                                    @if(count($questions) > 0)
                                        @foreach($questions as $question)
                                            <tr>
                                                <td>{{ $i++ }}</td>
                                                <td>{{ $question->question_code }}</td>
                                                <td>{{ $question->question_content }}</td>
                                                <td>{{ $question->question_category }}</td>
                                                <td><a href="{{ route('question.edit', [$survey->id, $question->id]) }}" class="btn btn-warning"><span class="glyphicon glyphicon-pencil" aria-hidden="true"></span> Sửa</a></td>
                                                <td><button type="button" class="btn btn-danger" data-toggle="modal" data-target="#formDelete-{{ $question->id }}">
                                                        <span class="glyphicon glyphicon-trash" aria-hidden="true"></span> Xóa
                                                    </button>
                                                    @include('admin.question.delete')
                                                </td>
                                            </tr>
                                        @endforeach
                                    @else
                                        <td colspan="6">Hiện khảo sát này chưa có câu hỏi nào.</td>
                                    @endif
                                    </tbody>
                                </table>
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
@endsection

@section('js')
<script type="text/javascript">
    $('#expired_day').datepicker({
        dateFormat: 'dd-mm-yy'
    });
</script>
@endsection
