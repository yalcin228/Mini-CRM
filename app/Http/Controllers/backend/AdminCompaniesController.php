<?php

namespace App\Http\Controllers\backend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Companie;
use Illuminate\Support\Facades\Storage;
use \App\Http\Requests\AdminAddCompaniesRequest;
use \App\Http\Requests\AdminEditCompaniesRequest;


class AdminCompaniesController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $companie=Companie::orderBy('created_at','DESC')->get();
        return view('backend.pages.companies',compact('companie'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('backend.pages.companies_add');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(AdminAddCompaniesRequest $request)
    {
       
        if($request->name){
          if($request->file('image')){
           
            $file=$request->file('image');
            $extension=$file->getClientOriginalExtension();
            $fileOriginalName=$file->getClientOriginalName();
            $explode=explode('.',$fileOriginalName);
            $newName=rand(10000,999999).".".$explode[1];
            Storage::putFileAs('public/images',$file,$newName);
            
            Companie::create([
                'name'=>$request->name,
                'email'=>$request->email,
                'logo'=>$newName,
                'website'=>$request->website
            ]);
            
          }
        }
        return redirect()->route('email');
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
        $edit=Companie::find($id);
        return view('backend.pages.companies_edit',compact('edit'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(AdminEditCompaniesRequest $request, $id)
    {
        $update=Companie::findOrFail($id);

        if($request->name){
            if($request->file('image')){
             
              $file=$request->file('image');
              $extension=$file->getClientOriginalExtension();
              $fileOriginalName=$file->getClientOriginalName();
              $explode=explode('.',$fileOriginalName);
              $newName=rand(10000,999999).".".$explode[1];
              Storage::putFileAs('public/images',$file,$newName);
              
              $update->name=$request->name;
              $update->email=$request->email;
              $update->logo=$newName;
              $update->website=$request->website;

              
            }
          }
          $update->save();
          return redirect()->route('company.index')->withUpdated('Yenilenme islemi ugurla edildi');

    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        
    }
    public function deleted(Request $request){
        $id=$request->delete_id;
        Companie::where('id',$id)->delete();
        return response()->json([],200);
    }
   
}
