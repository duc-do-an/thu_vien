<?php

namespace App\Http\Controllers\user;

use Illuminate\Http\Request;
use App\Services\user\LoanService;
use App\Http\Controllers\Controller;
use App\Http\Requests\user\LoanRenewalRequest;

class LoanController extends Controller
{
   private $loanService;

   public function __construct() {
      $this->loanService = new LoanService;
   }

   public function loans() {
      $loans = $this->loanService->fetchLoans();
      return view('user.loans', [
         'loanedBooks' => $loans['loanedBooks'],
         'unconfirmedReturns' => $loans['unconfirmedReturns'],
         'queues' => $loans['queues'],
         'renewableLoans' => $loans['renewableLoans']
      ]);
   }

   public function makeLoan(Request $request) {
      $this->loanService->makeLoan($request);
      return response()->json(['message' => 'Đã mượn sách thành công!'], 200);
   }

   public function enqueue(Request $request) {
      $this->loanService->enqueue($request);
      return response()->json(['message' => 'Bạn đang xếp hàng! 😃'], 200);
   }

   public function dequeue(Request $request) {
      $this->loanService->cancelQueue($request);
      return response()->json(['message' => 'Đã hủy hàng đợi thành công!'], 200);
   }

   public function returnBook(Request $request) {
      $this->loanService->returnBook($request);
      return response()->json(['message' => 'Trả lại sách của bạn đã được chuyển đến thủ thư!'], 200);
   }

   public function loanRenewal(LoanRenewalRequest $request) {
      $this->loanService->renewLoan($request);
      return response()->json(['message' => 'Yêu cầu gia hạn khoản vay của bạn đã được chuyển đến thủ thư!'], 200);
   }
}