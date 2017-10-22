<div class="top_nav">
    <div class="nav_menu">
        <nav>
            <div class="nav toggle">
                <a id="menu_toggle"><i class="fa fa-bars"></i></a>
            </div>

            <ul class="nav navbar-nav navbar-right">
                <li class=""><a href="javascript:;"
                                class="user-profile dropdown-toggle" data-toggle="dropdown"
                                aria-expanded="false">
                        <img src="{{ asset('image/admin.png') }}" alt="Avatar" title="Change the avatar">
                        {{ Auth::user()->username }}
                        <span class=" fa fa-angle-down"></span>
                    </a>
                    <ul class="dropdown-menu dropdown-usermenu pull-right">
                        <li><a data-toggle="modal" data-target=".changePass-modal">Đổi mật khẩu</a></li>
                        <li><a href="{{ route('logout') }}"><i class="fa fa-sign-out pull-right"></i>
                                Đăng xuất</a></li>
                    </ul>
                </li>
            </ul>
        </nav>
    </div>

    {{-- modals change pass --}}
    <div class="modal fade changePass-modal" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog modal-md">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span>
                    </button>
                    <h4 class="modal-title" id="myModalLabel2">Đổi mật khẩu người dùng</h4>
                </div>
                <form class="form-horizontal form-label-left" action="{{ route('student.updatePass') }}" method="POST">
                    <div class="modal-body">
                        {{ csrf_field() }}
                        <div class="form-group">
                            <label class="control-label col-md-4 col-sm-3 col-xs-12">Nhập mật khẩu hiện tại</label>
                            <div class="col-md-8 col-sm-9 col-xs-12">
                                <input type="password" class="form-control" name="current-password"  placeholder="Mật khẩu hiện tại">
                                @if (session()->has('error'))
                                    <p class="text-danger">{{ Session::get('error.current-password.0') }}</p>
                                @endif
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-md-4 col-sm-3 col-xs-12">Nhập mật khẩu mới</label>
                            <div class="col-md-8 col-sm-9 col-xs-12">
                                <input type="password" class="form-control" name="password" placeholder="Mật khẩu mới">
                                @if (session()->has('error'))
                                    <p class="text-danger">{{ Session::get('error.password.0') }}</p>
                                @endif
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-md-4 col-sm-3 col-xs-12">Nhập lại mật khẩu mới</label>
                            <div class="col-md-8 col-sm-9 col-xs-12">
                                <input type="password" class="form-control" name="password_confirmation"  placeholder="Nhập lại mật khẩu mới">
                                @if (session()->has('error'))
                                    <p class="text-danger">{{ Session::get('error.password_confirmation.0') }}</p>
                                @endif
                            </div>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="submit" class="btn btn-primary">Thay đổi</button>
                        <button type="button" class="btn btn-default" data-dismiss="modal">Hủy</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
    <!-- /modals -->

</div>

@section('js')
    @if (session()->has('error'))
        <script>
            $(document).ready(function(){
                $('.changePass-modal').modal('show');
            });
        </script>
    @endif
@endsection