<?php

namespace App\Http\Controllers;
use Illuminate\Support\Facades\DB;
use Illuminate\Http\Request;
use App\Services\LoginService;
use App\Http\Requests\LoginRequest;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Password;
use App\Http\Requests\ForgotPasswordRequest;
use App\Http\Requests\ResetPasswordRequest;
use App\Models\User;
use Illuminate\Support\Facades\Session;
use Illuminate\Support\Facades\Mail;
use App\Mail\SendMail;
class LoginController extends Controller
{
   private $loginService;

   public function getInputEmail() {
      return view('emails.input-email');
  }
  public function postInputEmail(Request $req) {
      $email=$req->txtEmail;
      //validate

      // kiểm tra có user có email như vậy không
      $users=User::where('email',$email)->get();
      //dd($user);
      if($users->count()!=0){
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
        
         
          return view('emails.input-email');  //về lại trang đăng nhập của khách
      }
      else {
            return redirect()->route('getInputEmail')->with('message','Email cua ban khong dung');
      }
  }//hết postInputEmail

   public function __construct() {
      $this->loginService = new LoginService();
   }

   public function login() {
      return view ('auth.login');
   }

   public function authenticate(LoginRequest $request) {
      $loginSuccess = $this->loginService->attemptLogin($request);

      if ($loginSuccess) {
         return response()->json(['status' => 'loginSuccess', 'role' => auth()->user()->role_id], 200);
      }

      return response()->json(['loginFailed' => 'Failed to login!'], 200);
   }

   public function forgotPassword() {
      return view('auth.forgot-password');
   }

   public function sendEmail(ForgotPasswordRequest $request) {
      $status = $this->loginService->sendResetLink($request);

      return $status === Password::RESET_LINK_SENT
               ? back()->with(['status' => __($status)])
               : back()->withErrors(['email' => __($status)]);
   }

   public function resetPassword(string $token) {
      return view('auth.reset-password', ['token' => $token]);
   }

   public function updatePassword(ResetPasswordRequest $request) {
      $status = $this->loginService->resetPassword($request);

      return $status === Password::PASSWORD_RESET
               ? to_route('login')->with('status', __($status))
               : back()->withErrors(['email' => [__($status)]]);
   }
   public function logout(Request $request) {
      $request->session()->invalidate();
      $request->session()->regenerateToken();
      Auth::logout();
      
      return to_route('login');
   }
}