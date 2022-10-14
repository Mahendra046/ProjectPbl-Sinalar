<?php

namespace App\Http\Controllers;
use App\Models\User;
use Auth;

class AuthController extends controller
{
    function showLogin()
    {
        return view('template.login');
    }

    function showAdminLogin()
    {
        return view('adminview.login');
    }

    function loginProcess()
    {
        if(Auth::attempt(['id_user' => request('id_user'), 'password' => request('password')])){
            return redirect('divisi/pembelian')->with('success', 'Login Berhasil');
        }
        else{
            return back()->with('danger', 'Login Gagal, Silahkan Cek Email atau Password Anda');
        }
        return redirect('login');
    }

    function loginProcessAdmin()
    {
        if(Auth::attempt(['id_user' => request('id_user'), 'password' => request('password')])){
            return redirect('admin/validasi')->with('success', 'Login Berhasil');
        }
        else{
            return back()->with('danger', 'Login Gagal, Silahkan Cek Email atau Password Anda');
        }
        return redirect('loginadmin');
    }

    function logout()
    {
        Auth::logout();
        return redirect('login');  
    }

    function logoutAdmin()
    {
        Auth::logout();
        return redirect('loginadmin');  
    }


    function registration()
    {
    }

    function forgotPassword()
    {
    }
}