<?php

namespace App\Http\Controllers\backend;

use App\Mail\TestMail;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Mail;

class MailController extends Controller
{
    public function sendEmail(){
        $details=[
            'title'=>'gulmemmedovyalcin@gmail.com',
            'body'=>'Yeni sirket elave edildi'
        ];
        Mail::to("yalcin.09700@gmail.com")->send(new TestMail($details));
          return redirect()->route('company.index')->withStore('Yeni Şirkət əlavə edildi və Mail yollandı');
    }
}
