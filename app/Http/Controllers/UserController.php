<?php

namespace App\Http\Controllers;

use App\Models\User;
use Facade\FlareClient\View;
use Illuminate\Contracts\View\View as ViewView;
use Illuminate\Http\Request;
use Illuminate\Validation\Rule;


class UserController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
    }
    public function login()
    {
        return view('users.login');
    }

    public function authenticate(Request $request)
    {
        $formFields = $request->validate([

            "email" => ['required', 'email'],
            "password" => 'required',

        ]);


        if (auth()->attempt($formFields)) {

            $request->session()->regenerate();
            return redirect('/')->with('message', 'your are now logged in successfully!.');
        }

        return back()->withErrors(["email" => "Invalid credentials"])->onlyInput('email');
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return View('users.register');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $formFields = $request->validate([
            "name" => ['required', 'min:4'],
            "email" => ['required', Rule::unique('users', 'email')],
            "password" => 'required|min:6|confirmed',
            // "password" => ['required', 'min:6', 'confirmed'],
            "password" => ['required', 'confirmed', 'min:6'],
            // "password" => 'min:6|required_with:password_confirmation|same:password_confirmation',
            // 'password_confirmation' => 'min:6'
        ]);

        $formFields['password'] = bcrypt($formFields['password']);

        // dd($formField);
        $user = User::create($formFields);

        auth()->login($user);
        // waiting for the next 
        return redirect('/')->with('message', 'User created and logged in successfully!.');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
    public function logout(Request $request)
    {
        auth()->logout();
        $request->session()->invalidate();
        $request->session()->regenerateToken();
        return redirect('/')->with('message', 'Logged out successfully!.');
    }
}