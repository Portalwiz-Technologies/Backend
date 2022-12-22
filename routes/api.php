<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\valid;
use App\Http\Controllers\fileupload;


/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});

Route::get("/getup",[valid ::class,'getData']);
Route::post("/adddata",[valid::class,'addinfo']);
Route::Put("/updated",[valid ::class,'update']);
Route::delete("/delete/{id}",[valid::class,'delete']);
Route::get("/search/{name}",[valid::class,'search']);
Route::post("/upload",[fileupload::class,'upload']);


