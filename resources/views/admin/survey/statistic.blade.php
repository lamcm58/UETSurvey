@extends('admin.layouts.master')

@section('content')
    <div class="right_col" role="main">
        <div class="">
            <div class="row">
                <div class="col-md-12 col-sm-12 col-xs-12">
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
                            <h2>
                                Danh sách môn học
                            </h2>
                            <div class="clearfix"></div>
                        </div>

                        <div class="x_content">
                            <table class="table table-striped table-bordered dt-responsive nowrap"
                                   cellspacing="0" width="100%">
                                <thead>
                                <tr>
                                    <th>STT</th>
                                    <th>Khoa</th>
                                    <th>Thống kê</th>
                                    <th>Tải thống kê</th>
                                </tr>
                                </thead>
                                <tbody>
                                <?php $i=0;?>
                                @foreach($categories as $category)
                                    <?php $i++;?>
                                    <tr>
                                        <td>{{ $i }}</td>
                                        <td><a href="{{ route('survey.statisticCategory', [$survey->id, $category->id]) }}">{{ $category->category_name }}</a></td>
                                        <td><a href="#" class="btn btn-info"><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span>&nbsp;Thống kê</a></td>
                                        <td><a href="{{ route('survey.export', [$survey->id, $category->id]) }}" class="btn btn-warning"><span class="glyphicon glyphicon-export" aria-hidden="true"></span> Xuất báo cáo</a></td>
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
