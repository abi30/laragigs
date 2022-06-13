<?php

use App\Http\Controllers\ListingController;
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
Route::get('/listings/create', [ListingController::class, 'create']);
// storage a new listing in database
Route::post('/listings', [ListingController::class, 'store']);
// show edit form with existing data
Route::get('/listings/{listing}/edit', [ListingController::class, 'edit']);
// update an existing listing in database
Route::put('/listings/{listing}', [ListingController::class, 'update']);

// delete an existing listing data from database
Route::delete('/listings/{listing}', [ListingController::class, 'destroy']);
// show a new listing
Route::get('/listings/{listing}', [ListingController::class, 'show']);