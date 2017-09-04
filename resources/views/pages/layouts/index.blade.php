@extends('pages.layouts.master')

@section('content')
    <div class="right_col" role="main">
        <h1>Danh sách môn học của tôi</h1>
        <ul>
            @foreach($data as $item)
                <li><a href="{{ route('subjectDetail', $item->subject_id) }}">{{ $item->name }} ({{ $item->subject_class_code }})</a></li>
            @endforeach
        </ul>
        <!-- /top tiles -->
    </div>
@endsection

@section('js')
    <script>
        $('div .alert').delay(3000).slideUp();
    </script>
@endsection