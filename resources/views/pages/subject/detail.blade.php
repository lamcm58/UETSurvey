@extends('pages.layouts.master')

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
                        <div class="x_content">
                            <!-- Danh sách survey -->
                            <h3>Danh sách khảo sát</h3>
                            <hr>
                            @if(count($selected)>0)
                            <table class="table table-striped table-bordered dt-responsive nowrap"
                                   cellspacing="0" width="100%">
                                <thead>
                                <tr>
                                    <th>STT</th>
                                    <th>Tên khảo sát</th>
                                </tr>
                                </thead>
                                <tbody>
                                <?php $i = 1;?>
                                @foreach($selected as $item)
                                    <tr>
                                        <td>{{ $i++ }}</td>
                                        <td><a href="{{ route('preview', [$subject->id, $item->survey_id]) }}">{{ $item->survey_name }}</a></td>
                                    </tr>
                                @endforeach
                                </tbody>
                            </table>
                            @else
                                <td colspan="2">Hiện tại môn học này chưa có khảo sát nào cả.</td>
                            @endif

                            <!-- End -->
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
