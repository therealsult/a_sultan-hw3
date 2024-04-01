<?php

namespace App\Http\Controllers;

use Laravel\Lumen\Routing\Controller as BaseController;
use Illuminate\Support\Facades\DB;
use Illuminate\Http\Response;

class PhoneController extends BaseController
{
    // List all phones
    public function index()
    {
        $phones = DB::table('phones')->select('id', 'brand', 'model', 'release_year', 'category', 'image_url')->get();

       
        $phones = $phones->map(function ($phone) {
            if (!empty($phone->image_url)) {
                $phone->image_url = url($phone->image_url); 
            }
            return $phone;
        });

        return response()->json($phones);
    }

    // Get details for a single phone
    public function show($id)
    {
        $phone = DB::table('phones')->where('id', $id)->first();

        if ($phone) {
           
            if (!empty($phone->image_url)) {
                $phone->image_url = url($phone->image_url); 
            }

            return response()->json($phone);
        } else {
            return response()->json(['error' => 'Sorry, the phone was not found'], 404);
        }
    }
}
