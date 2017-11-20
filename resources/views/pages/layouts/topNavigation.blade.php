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
                        <li><a href="{{ route('student.changePass') }}">Đổi mật khẩu</a></li>
                        <li><a href="{{ route('logout') }}"><i class="fa fa-sign-out pull-right"></i>
                                Đăng xuất</a></li>
                    </ul>
                </li>
            </ul>
        </nav>
    </div>

</div>
