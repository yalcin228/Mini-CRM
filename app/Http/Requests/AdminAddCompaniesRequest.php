<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class AdminAddCompaniesRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [
            'name'=>'required|max:50',
            'email'=>'email|unique:companies,email',
            'image'=>'mimes:jpg,jpeg,png,svg',
            'website'=>'max:100',    
        ];
    }
    public function attributes(){
        return[
            'name'=>'Şirkət adı',
            'email'=>'Email',
            'image'=>'Logo',
            'website'=>'Website addresi'
        ];
    }
}
