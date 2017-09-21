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
                            <h2>{{ $subject->name }} - {{ $survey->survey_name }}</h2>
                            <div class="clearfix"></div>
                        </div>

                        <div class="x_content">
                            <h3>Danh sách sinh viên chưa làm khảo sát</h3>
                            <ul>
                                @if(count($studentsNotDone)>0)
                                    @foreach($studentsNotDone as $item)
                                        <li>
                                            <a>{{ $item->full_name }} - {{ $item->student_code }}</a>
                                        </li>
                                    @endforeach
                                @else
                                    <h5>Không có dữ liệu</h5>
                                @endif
                            </ul>

                            <hr>

                            <h3>Thống kê môn học</h3>
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
                                @foreach($questions as $question)
                                    <?php
                                        $total_1_{$question->id} = 0;
                                        $total_2_{$question->id} = 0;
                                        $total_3_{$question->id} = 0;
                                        $total_4_{$question->id} = 0;
                                        $total_5_{$question->id} = 0;
                                    ?>
                                    @if(count($results)>0)
                                        <?php
                                            foreach ($results as $result) {
                                                $list_result = unserialize($result->student_answers);
                                                if ($list_result["question-{$question->id}"]=="1") {
                                                    $total_1_{$question->id} += 1;
                                                }
                                                if ($list_result["question-{$question->id}"]=="2") {
                                                    $total_2_{$question->id} += 1;
                                                }
                                                if ($list_result["question-{$question->id}"]=="3") {
                                                    $total_3_{$question->id} += 1;
                                                }
                                                if ($list_result["question-{$question->id}"]=="4") {
                                                    $total_4_{$question->id} += 1;
                                                }
                                                if ($list_result["question-{$question->id}"]=="5") {
                                                    $total_5_{$question->id} += 1;
                                                }
                                            }
                                        ?>
                                    @endif
                                    <tr>
                                        <td>{{ $question->question_content }}</td>
                                        <td>{{ $total_1_{$question->id} }} / {{ ListProperty::getTotalStudentDone($survey->id, $subject->id) }}</td>
                                        <td>{{ $total_2_{$question->id} }} / {{ ListProperty::getTotalStudentDone($survey->id, $subject->id) }}</td>
                                        <td>{{ $total_3_{$question->id} }} / {{ ListProperty::getTotalStudentDone($survey->id, $subject->id) }}</td>
                                        <td>{{ $total_4_{$question->id} }} / {{ ListProperty::getTotalStudentDone($survey->id, $subject->id) }}</td>
                                        <td>{{ $total_5_{$question->id} }} / {{ ListProperty::getTotalStudentDone($survey->id, $subject->id) }}</td>
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
