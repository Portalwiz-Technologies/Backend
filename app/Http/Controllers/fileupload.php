<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\valideserver;

class fileupload extends Controller
{
    
    function upload(Request $req)
    {
        $result = $req->file('file')->store('apiDocs');
        return ["result"=>$result,"status"=>true];
    }
}
