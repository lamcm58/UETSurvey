@extends('admin.layouts.master')

@section('content')
    <div class="right_col" role="main">
        @if(session('err'))
            <div class="alert alert-warning" role="alert">{{ session('err') }}</div>
    @endif
    <!-- top tiles -->
            <h1>Welcome!</h1>
    <!-- /top tiles -->
    </div>
@endsection

@section('js')
    <script>
        $('div .alert').delay(3000).slideUp();
    </script>
@endsection