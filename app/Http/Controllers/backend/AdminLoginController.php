<?php

namespace App\Http\Controllers\backend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use \App\Http\Requests\AdminLoginRequest;
use Illuminate\Support\Facades\Auth;


class AdminLoginController extends Controller
{
    public function login(){
        return view('backend.admin.login');
    }
    public function post_login(AdminLoginRequest $request){
        if (Auth::attempt(['email' => $request->email, 'password' => $request->password])) {
             return redirect()->route('admin.index');
        }
        else{
            return redirect()->route('admin.login');
        }
    }
    public function logout(){
        Auth::logout();
        return redirect()->route('admin.login')->withLogout('Çıxış edildi');
    }
}
