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
                            <h2><h4>{{ $subject->course_id }}_{{ ListProperty::formatSubjectCode($subject->subject_class_code) }}
                                    - {{ $subject->name }} - {{ $subject->teacher_name }}</h4></h2>
                            <div class="clearfix"></div>
                        </div>
                        <!-- Danh sách survey -->
                            <h3>Danh sách survey</h3>
                            <hr>
                            <table class="table table-striped table-bordered dt-responsive nowrap"
                                   cellspacing="0" width="100%">
                                <thead>
                                <tr>
                                    <th>STT</th>
                                    <th>Tên survey</th>
                                    <th>Xem</th>
                                </tr>
                                </thead>
                                <tbody>
                                @if(count($selected)>0)
                                    <?php $i=0;?>
                                    @foreach($selected as $item)
                                        <?php $i++;?>
                                        <tr>
                                            <td>{{ $i }}</td>
                                            <td>{{ $item->survey_name }}</td>
                                            <td><a href="{{ route('survey.preview', $item->survey_id) }}" class="btn btn-info"><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span>&nbsp;Xem</a></td>
                                        </tr>
                                    @endforeach
                                @else
                                    <td colspan="3">Hiện tại môn học này chưa có survey nào cả.</td>
                                @endif
                                </tbody>
                            </table>

                            <!-- End -->
                            <hr>
                            <!-- Danh sách sinh viên -->
                            <h3>Danh sách sinh viên</h3>
                            <hr>
                            <table class="table table-striped table-bordered dt-responsive nowrap"
                                   cellspacing="0" width="100%">
                                <thead>
                                <tr>
                                    <th>STT</th>
                                    <th>Mã SV</th>
                                    <th>Tên SV</th>
                                    <th>Email</th>
                                </tr>
                                </thead>
                                <tbody>
                                @if(count($students)>0)
                                    <?php $i=0;?>
                                    @foreach($students as $item)
                                        <?php $i++;?>
                                        <tr>
                                            <td>{{ $i }}</td>
                                            <td>{{ $item->student_code }}</td>
                                            <td>{{ $item->full_name }}</td>
                                            <td>{{ $item->email }}</td>
                                        </tr>
                                    @endforeach
                                @else
                                    <td colspan="4">Không có dữ liệu</td>
                                @endif
                                </tbody>
                            </table>
                            {{ $students->links() }}
                        <!-- End -->
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
