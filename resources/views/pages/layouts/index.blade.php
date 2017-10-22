@extends('pages.layouts.master')

@section('content')
    <div class="right_col" role="main">
        <div class="">
            @if (session()->has('success'))
                <div class="alert alert-success" role="alert">
                    {{ session('success') }}
                </div>
            @endif
            <div class="row">
                <h1>Danh sách môn học của tôi</h1>
                <table class="table table-striped table-bordered dt-responsive nowrap"
                       cellspacing="0" width="100%">
                    <thead>
                    <tr>
                        <th>STT</th>
                        <th>Môn học</th>
                        <th>Xem</th>
                    </tr>
                    </thead>
                    <tbody>
                    <?php $i=0;?>
                    @foreach($data as $item)
                        <?php $i++;?>
                        <tr>
                            <td>{{ $i }}</td>
                            <td>{{ $item->course_id }}_{{ ListProperty::formatSubjectCode($item->subject_class_code) }}_{{ $item->name }}</td>
                            <td><a href="{{ route('subjectDetail', $item->subject_id) }}" class="btn btn-info"><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span>&nbsp;Xem</a></td>
                        </tr>
                    @endforeach
                    </tbody>
                </table>
            </div>
        </div>

        <!-- /top tiles -->
    </div>
@endsection
