@extends('admin.layouts.master')

@section('content')
    <div class="right_col" role="main">
        <div class="">
            <div class="row">
                <div class="col-md-10 col-xs-12">
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
                            <h2>Đổi mật khẩu</h2>
                            <div class="clearfix"></div>
                        </div>
                        <div>
                            <form class="form-horizontal form-label-left" action="{{ route('admin.updatePass') }}" method="POST">
                                {{ csrf_field() }}
                                <div class="form-group">
                                    <label class="control-label col-md-4 col-sm-3 col-xs-12">Nhập mật khẩu hiện tại <span style="color: red;">*</span></label>
                                    <div class="col-md-8 col-sm-9 col-xs-12">
                                        <input type="password" class="form-control" name="current_password"  placeholder="Mật khẩu hiện tại">
                                        @if ($errors->first('current_password'))
                                            <p class="text-danger">{{ $errors->first('current_password') }}</p>
                                        @endif
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="control-label col-md-4 col-sm-3 col-xs-12">Nhập mật khẩu mới <span style="color: red;">*</span></label>
                                    <div class="col-md-8 col-sm-9 col-xs-12">
                                        <input type="password" class="form-control" name="password" placeholder="Mật khẩu mới">
                                        @if ($errors->first('password'))
                                            <p class="text-danger">{{ $errors->first('password') }}</p>
                                        @endif
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="control-label col-md-4 col-sm-3 col-xs-12">Nhập lại mật khẩu mới <span style="color: red;">*</span></label>
                                    <div class="col-md-8 col-sm-9 col-xs-12">
                                        <input type="password" class="form-control" name="password_confirmation"  placeholder="Nhập lại mật khẩu mới">
                                        @if ($errors->first('password_confirmation'))
                                            <p class="text-danger">{{ $errors->first('password_confirmation') }}</p>
                                        @endif
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-md-4 col-sm-3 col-xs-12"></div>
                                    <div class="col-md-8 col-sm-9 col-xs-12">
                                        <button type="submit" class="btn btn-primary">Thay đổi</button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
