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
                            <h2>{{ $survey->survey_name }}</h2>
                            <div class="clearfix"></div>
                        </div>
                        <div class="x_title">
                            <h2>Phân quyền người được phép làm khảo sát</h2>
                            <br/>

                            <div class="x_panel">
                            <h4>Chọn theo khoa</h4>
                            <form action="{{ route('survey.grantCategory', $survey->id) }}" method="post">
                            {{ csrf_field() }}
                                <div class="col-md-4">
                                    <select name="cat_id" id="" class="form-control">
                                        <option value="">Chọn khoa</option>
                                        @foreach($categories as $category)
                                        <option value="{{ $category->id }}">{{ $category->category_name}}</option>
                                        @endforeach
                                    </select>
                                </div>
                                <div class="col-md-4">
                                    <button type="submit" class="btn btn-primary">Thêm</button>
                                </div>
                            </form>
                            </div>
                            
                            <div class="clearfix"></div>
                        </div>
                        <div class="x_content">
                            <p>Đề nghị cho biết ý kiến đánh giá của bạn bằng cách Tích chọn vào giá trị tương ứng (1..5) về từng vấn đề trong quá trình tham gia môn học này.</p>
                            <p>Thang đánh giá:</p>
                            <p>1 = Hoàn toàn không đồng ý</p>
                            <p>2 = Cơ bản không đồng ý</p>
                            <p>3 = Phân vân</p>
                            <p>4 = Cơ bản đồng ý</p>
                            <p>5 = Hoàn toàn đồng ý</p>

                            <table class="table table-striped table-bordered dt-responsive nowrap"
                                   cellspacing="0" width="100%">
                                <thead>
                                <tr>
                                    <th></th>
                                    <th>1</th>
                                    <th>2</th>
                                    <th>3</th>
                                    <th>4</th>
                                    <th>5</th>
                                </tr>
                                </thead>
                                <tbody>
                                <?php $i=0;?>
                                @foreach($question_categories as $item)
                                    <?php $i++;?>
                                    <tr>
                                        <td><h3>{{ $i }}. {{ $item->question_category }}</h3></td>
                                        <td colspan="6"></td>
                                    </tr>
                                    <?php $questions = ListProperty::getQuestionByCategory($item->question_category); ?>
                                    @foreach($questions as $question)
                                        @if($question->question_type == 1)
                                        <tr>
                                            <td>{{ $question->id }}. {{ $question->question_content }}</td>
                                            <td><input type="radio" name="question-{{ $question->id }}" value="1"></td>
                                            <td><input type="radio" name="question-{{ $question->id }}" value="2"></td>
                                            <td><input type="radio" name="question-{{ $question->id }}" value="3"></td>
                                            <td><input type="radio" name="question-{{ $question->id }}" value="4"></td>
                                            <td><input type="radio" name="question-{{ $question->id }}" value="5"></td>
                                        </tr>
                                        @elseif($question->question_type == 2)
                                            <tr>
                                                <td colspan="6">
                                                    <textarea name="question-{{ $question->id }}" class="form-control" id="" cols="30" rows="10" placeholder="{{ $question->question_content }}"></textarea>
                                                </td>
                                            </tr>
                                        @endif
                                    @endforeach
                                @endforeach
                                </tbody>
                            </table>
                            <a href="{{ route('survey.edit', $survey->id) }}" class="btn btn-warning"><span class="glyphicon glyphicon-pencil" aria-hidden="true"></span> Chỉnh sửa</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
