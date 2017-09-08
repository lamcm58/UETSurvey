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
                            <h2>{{ $item->survey_name }}</h2>
                            <div class="clearfix"></div>
                        </div>
                        <div class="x_title">
                            <h2>Phân quyền người được phép làm khảo sát</h2>
                            <br/>

                            <div class="x_panel">
                            <h4>Chọn theo khoa</h4>
                            <form action="{{ route('survey.grantCategory', $item->id) }}" method="post">
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

                            <?php $i = 1;?>
                            <table class="table table-striped table-bordered dt-responsive nowrap"
                                   cellspacing="0" width="100%">
                                <thead>
                                <tr>
                                    <th></th>
                                    <th></th>
                                    <th>1</th>
                                    <th>2</th>
                                    <th>3</th>
                                    <th>4</th>
                                    <th>5</th>
                                </tr>
                                </thead>
                                <tbody>
                                @foreach($questions as $question)
                                    <tr>
                                        <td>{{ $question->question_content }}</td>
                                        <td><input type="radio" name="question-{{ $question->id }}" value=""
                                                   checked></td>
                                        </td>
                                        <td><input type="radio" name="question-{{ $question->id }}" value="1"></td>
                                        <td><input type="radio" name="question-{{ $question->id }}" value="2"></td>
                                        <td><input type="radio" name="question-{{ $question->id }}" value="3"></td>
                                        <td><input type="radio" name="question-{{ $question->id }}" value="4"></td>
                                        <td><input type="radio" name="question-{{ $question->id }}" value="5"></td>
                                    </tr>
                                @endforeach
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
