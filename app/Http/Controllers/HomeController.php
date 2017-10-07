<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Log;

class HomeController extends Controller
{
    public function index()
    {
        if (Auth::guard('admin')->check()) {
            Log::useFiles(storage_path().'/app_logs/'.date('Ymd').'_admin_access.log');
            Log::info('Admin '.Auth::guard('admin')->user()->username.' accesses to home page.');
            return view('admin.layouts.index');
        }
    }
}
