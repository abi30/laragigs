<?php

use App\Http\Controllers\ListingController;
use App\Http\Controllers\UserController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Models\Listing;
use App\Models\User;
use PhpParser\Node\Expr\List_;

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

// Route::get('/layout', function () {
//     return view('layout');
// });
// All listings
Route::get('/', [ListingController::class, 'index']);
// create a new listing
Route::get('/listings/create', [ListingController::class, 'create'])->middleware('auth');
// storage a new listing in database
Route::post('/listings', [ListingController::class, 'store'])->middleware('auth');
// show edit form with existing data
Route::get('/listings/{listing}/edit', [ListingController::class, 'edit'])->middleware('auth');
// update an existing listing in database
Route::put('/listings/{listing}', [ListingController::class, 'update'])->middleware('auth');

// delete an existing listing data from database
Route::delete('/listings/{listing}', [ListingController::class, 'destroy'])->middleware('auth');
// manage Listings
Route::get('/listings/manage', [ListingController::class, 'manage'])->middleware('auth');
// show a new listing
Route::get('/listings/{listing}', [ListingController::class, 'show']);


// show Register/Create form for users
Route::get('/register', [UserController::class, 'create'])->middleware('guest');
//Create new user
Route::post('/users', [UserController::class, 'store']);
// log User out from website
Route::post('/logout', [UserController::class, 'logout'])->middleware('auth');
Route::get('/login', [UserController::class, 'login'])->middleware('guest')->name('login');
// log in User Authentication
Route::post('/users/authenticate', [UserController::class, 'authenticate']);