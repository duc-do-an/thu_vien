<?php

namespace App\Http\Controllers;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Mail;
use App\Mail\ContactMail;
use App\Mail\SendMail;
use Illuminate\Support\Facades\Session;
use App\Models\User;
use App\Models\Email;
use Illuminate\Support\Facades\DB;
use Illuminate\Http\Request;

class MailController extends Controller
{
    public function getinputEmail() {
        return view('auth.forgot-password');
    }
    public function postinputEmail(Request $req) {
        $email=$req->Email;
        //validate

        // kiểm tra có user có email như vậy không
        $user=User::where('email',$email)->get();
        //dd($user);
        if($user->count()!=0){
            $matkhaumoi = substr( md5( rand (0,999999)), 0, 8); 
            $sentData = [
                'title' => 'Mật khẩu mới của bạn là:',
                'body' => $matkhaumoi,
            ];
            DB::table('users')->where('email',$email)->update([
                'password' =>   Hash::make($matkhaumoi) ,
                
               
            ]);
            Mail::to($req->user())->cc($email)->bcc($email)->send(new SendMail($sentData));
            Session::flash('message', 'Gửi emal thành công!');
           
            return redirect()->route('getinputEmail');  //về lại trang đăng nhập của khách
        }
        else {
              return redirect()->route('getinputEmail')->with('message','email của bạn không đúng');
        }
    }//hết postInputEmail
    //

    public function getlienhe()
    {
        
        return view('visitor.contact');
    }
    public function postlienhe(Request $request)
    {
        $name = $request->input('name');
        $email = $request->input('email');
        $content = $request->input('message');
        $subject = $request->input('subject');

        // Tạo một đối tượng UserMail với dữ liệu trên
        $userMail = new ContactMail($name, $email, $content, $subject);

        // Gửi email đến người quản lý web với địa chỉ là admin@web.com
        Mail::to('huynhvanduc04062003@gmail.com')->send($userMail);
        $emails = new Email();
        $emails->name = $name;
        $emails->subject = $subject;
        $emails->message = $content;
        $emails->email = $email;
        $emails->status = 1;
        
        $emails->save();
        Session::flash('message', 'Gửi email thành công !');
        // Trả về một thông báo thành công
        return redirect()->route('getlienhe');
    }

}