@extends('admin.layouts.master')

@section('content')
    <div class="right_col" role="main">
        <div class="">
            <div class="row">
                <div class="col-md-12 col-sm-12 col-xs-12">
                    <div class="x_panel">
                        <div class="x_title">
                            <h2>
                                Danh sách survey
                            </h2>
                            <div class="clearfix"></div>
                        </div>
                        <div class="x_content">
                            <table class="table table-striped table-bordered dt-responsive nowrap"
                                   cellspacing="0" width="100%">
                                <thead>
                                <tr>
                                    <th>STT</th>
                                    <th>Tên survey</th>
                                    <th>Ngày hết hạn</th>
                                    <th>Xem</th>
                                    <th>Thống kê</th>
                                    <th>Xóa</th>
                                </tr>
                                </thead>
                                <tbody>
                                <?php $i = 1;?>
                                @if(count($surveys)>0)
                                    @foreach($surveys as $survey)
                                        <tr>
                                            <td>{{ $i++ }}</td>
                                            <td>{{ str_replace(' ', '', $survey->survey_code) }} - {{ $survey->survey_name }}</td>
                                            </td>
                                            <td>{{ date("d-m-Y H:i:s", strtotime($survey->expired_day)) }}</td>
                                            <td><a href="{{ route('survey.preview', $survey->id) }}" class="btn btn-info"><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span>&nbsp;Xem</a></td>
                                            <td><a href="{{ route('survey.statistic', $survey->id) }}" class="btn btn-success"><span class="glyphicon glyphicon-stats" aria-hidden="true"></span>&nbsp;Thống kê</a></td>
                                            <td><button type="button" class="btn btn-danger"><span class="glyphicon glyphicon-trash" aria-hidden="true"></span>&nbsp;Xóa</button></td>
                                        </tr>
                                    @endforeach
                                @else
                                    <td colspan="6">Hiện chưa có survey nào.</td>
                                @endif
                                </tbody>
                            </table>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>
@endsection
