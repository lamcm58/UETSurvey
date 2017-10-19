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
                            <h2>{{ $survey->survey_name }} - {{ $subject->name }}_{{ $subject->subject_class_code }}</h2>
                            <div class="clearfix"></div>
                        </div>

                        <div class="x_content">
                            <h3>Danh sách sinh viên chưa làm khảo sát</h3>
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
                                @if(count($studentsDone)>0)
                                    <?php $i=0;?>
                                    @foreach($studentsDone as $item)
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
                            {{ $studentsDone->links() }}
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
