<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class AdminEditEmployeesRequest extends FormRequest
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
            'first_name'=>'required|string|max:50|min:3',
            'last_name'=>'required|string|max:50|min:6',
            'email'=>'nullable|email',
            'phone'=>'nullable|digits:9|numeric',
        ];
    }
    public function attributes(){
        return[
            'first_name'=>'Ad',
            'last_name'=>'Soyad',
            'email'=>'Email',
            'phone'=>'Nömrə',
      
        ];
    }
}
