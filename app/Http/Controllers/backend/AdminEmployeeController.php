<?php

namespace App\Http\Controllers\backend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Employee;
use App\Models\Companie;
use \App\Http\Requests\AdminAddEmployeesRequest;
use \App\Http\Requests\AdminEditEmployeesRequest;


class AdminEmployeeController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $employee=Employee::orderBy('created_at','DESC')->get();
        return view('backend.pages.employees',compact('employee'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $companie=Companie::all();
        return view('backend.pages.employess_add',compact('companie'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(AdminAddEmployeesRequest $request)
    {
        if($request->first_name && $request->last_name){
            Employee::create([
               'first_name'=>$request->first_name,
               'last_name'=>$request->last_name,
               'companies_id'=>$request->companie
            ]);
        }
       
        Employee::create([
            'first_name'=>$request->first_name,
            'last_name'=>$request->last_name,
            'companies_id'=>$request->companie,
            'email'=>$request->email,
            'phone'=>$request->phone,
         ]);
       
        return redirect()->route('employee.index')->withStore('Yeni İşçi əlavə edildi');
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
        $edit=Employee::find($id);
        $companie=Companie::all();
        return view('backend.pages.employees_edit',compact('edit'))->with('companie',$companie);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(AdminEditEmployeesRequest $request, $id)
    {
        $update=Employee::find($id);
        $update->first_name = $request->first_name;
        $update->last_name = $request->last_name;
        $update->companies_id = $request->companie;
        $update->email = $request->email;
        $update->phone = $request->phone;

        $update->save();

        return redirect()->route('employee.index')->withUpdated('Yenilenme islemi ugurla edildi');


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
    public function deleted(Request $request){
        $id=$request->delete_id;
        Employee::where('id',$id)->delete();
        return response()->json([],200);
    }
}
