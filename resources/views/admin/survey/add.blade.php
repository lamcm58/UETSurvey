@extends('admin.layouts.master')

@section('content')
    <div class="right_col" role="main">
        <div class="">
            <div class="row">
                <div class="col-md-10 col-xs-12">
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
                    <div class="x_panel">
                        <div class="x_title">
                            <h2>Thêm khảo sát</h2>
                            <div class="clearfix"></div>
                        </div>
                        {{--Thêm survey bằng file text--}}
                        <div>
                            <h2>Thêm bằng file</h2>
                            <form action="{{ route('survey.import') }}" method="post" enctype="multipart/form-data">
                                {{ csrf_field() }}
                                <div class="x_panel">
                                    <div class="form-group">
                                        <input type="file" name="text_file" class="form-control" />
                                    </div>
                                    <button type="submit" class="btn btn-primary">Thêm</button>
                                </div>

                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection

@section('js')
<script>
    // $("input#expired_day").datepicker({
    //     minDate: 0,
    //     dateFormat: 'dd-mm-yy',
    // }).datepicker("setDate", new Date());

    // $(document).ready(function () {
    //     $('#check').on('change', function() {
    //         if($(this).is(":checked")) {
    //             $('#subject_id').prop('disabled', true);
    //         } else {
    //             $('#subject_id').prop('disabled', false);
    //         }
    //     });
    // });
</script>
@endsection
