<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Models\Listing;
use App\Models\User;


/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('listings', [
        'heading' => '',
        'listings' => Listing::all()
    ]);
});
Route::get('/layout', function () {
    return view('layout');
});
Route::get('/listings/{id}', function ($id) {
    return view('listing', [
        'listing' => Listing::find($id)
    ]);
});