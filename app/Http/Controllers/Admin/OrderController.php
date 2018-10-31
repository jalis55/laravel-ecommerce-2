<?php
namespace App\Http\Controllers\Admin;
use Illuminate\Http\Request;
use App\Http\Requests;
use App\Http\Controllers\Controller;
use DB;
use App\Models\Temp_order;
use App\Models\Order;

use Session;

//use validator;
//use Illuminate\Support\Facades\Validator; 

class OrderController extends Controller {
    //
    public function __construct()
    {
        $this->middleware('admin-auth');
    }
    
    public function index() {
       
        $data['orders_list'] = \App\Models\Order::all();
        return view('admin.order.home', ['data'=>$data]);
    }

    public function orderDetails($order_row_id){
              

           $data['orders_details']=Order::get()->where('order_row_id',$order_row_id)->first();

           // print_r( $data['orders_details']);
           // exit();

         // $data['orders_details'] = DB::table('orders As To')
         //                       ->join('products As p', 'To.product_row_id', '=', 'p.product_row_id')
         //                       ->where('To.order_row_id', $order_row_id)
         //                       ->select('p.*', 'To.*')                               
         //                       ->get();
                               
          // $data['orders_details']=Order::get()->where('order_row_id',$order_row_id)->first()->orders_details;

           $data['total_price'] = Order::get()->where('order_row_id',$order_row_id)->first()->total_price;
    
         return view('admin.order.details', ['data'=>$data]);
    }
    
  public function downloadPdf($order_id)
    {

      $data['order_by_id']=DB::table('orders')->where('order_row_id',$order_id)->first();
        $data['order-details-by_order-no']=DB::table('orders')->where('order_row_id',$order_id)->get();
        $pdf = \PDF::loadView('admin.order.invoice', ['data'=>$data]);
        return $pdf->stream('Invoice_'.sprintf('%06d',$order_id).'.pdf');
    }
     public function sendSms(Request $request)
     {

    
      $user = "user name will be provided by sslwireless ";    
      $sid = "sid will be provided by sslwireless";
      $pass="";
    
       $url="http://sms.sslwireless.com/pushapi/dynamic/server.php";
      $param="user=$user&pass=$pass&sms[0][0]=".$request->mobile."&sms[0][1]=".urlencode($request->message)."&sid=$sid";

$crl = curl_init();
curl_setopt($crl,CURLOPT_SSL_VERIFYPEER,FALSE);
curl_setopt($crl,CURLOPT_SSL_VERIFYHOST,2);
curl_setopt($crl,CURLOPT_URL,$url);
curl_setopt($crl,CURLOPT_HEADER,0);
curl_setopt($crl,CURLOPT_RETURNTRANSFER,1);
curl_setopt($crl,CURLOPT_POST,1);
curl_setopt($crl,CURLOPT_POSTFIELDS,$param);
 $response = curl_exec($crl);
     }  
}
