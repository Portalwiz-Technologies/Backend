<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\valideserver;
use Illuminate\Support\Facades\Validator;  //Must be import this package while if u want to add validation.


class valid extends Controller
{
    function getData($id=null){
    
        return $id?valideserver::find($id):valideserver::all();
        }


    //     // function addinfo(Request $req ){
    //     //     $valideserver=new valideserver;
    //     //     $valideserver->name=$req->name;
    //     //     $valideserver->email=$req->email;
    //     //     $valideserver->phone=$req->phone;
    //     //     $valideserver->message=$req->message;
    //     //     $result=$valideserver->save();
    //     //     if($result){
    //     //         return["Result"=>"data inserted","status"=>true];
                
    
    //     //     }
    //     //     else{
    //     //         return["Result"=>"data not inserted","status" =>false];
    
    //     //     }
    
           
    // }

    function update(Request $req){
        $valideserver=valideserver::find($req->id);
        $valideserver->name=$req->name;
        $valideserver->email=$req->email;
        $valideserver->phone=$req->phone;
        $valideserver->message=$req->message;
        $result=$valideserver->save();
        if($result){
            return["result"=>"data has been updated", "status" =>true];
        }
        else{
            return["result"=>"data has been not updated", "status" =>false];
    
        }
    
    }

    function addinfo(Request $req){
        
        $validator=Validator::make($req->all(),[
            "name"=>'required|min:2|max:100',
            "email"=>'required|email',
            'phone'=>'required|min:10|max:13',
            'message'=>'required|min:2|max:200'
            

        ]); 
        
         if($validator->fails()){

            return response()->json([
                "message"=>"Validation fails",
                "error"=>$validator->errors()
            ]);
        }
        else{
            $valideserver=new valideserver;
            $valideserver->name=$req->name;
            $valideserver->email=$req->email;
            $valideserver->phone=$req->phone;
            $valideserver->message=$req->message;
            $result=$valideserver->save();
            if($result){
                return["Result"=>"data Has been inserted","status"=>true];
    
            }
            else{
                return["Result"=>"data Has been  not inserted","status"=>false];
    
            }

        }
        
}
function delete($id){
    $valideserver=valideserver ::find($id);
    $result=$valideserver->delete();
    if($result){
        return["result"=>"Record deleted".$id, "status" => true];

    }
    else{
        return["result"=>"Record not deleted".$id,"status" => false];
    }

    
}
function search($name)
{
    return valideserver:: where("name",$name)->get();
}
}
