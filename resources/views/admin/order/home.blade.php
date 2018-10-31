@extends('admin.layouts.app')

@section('content')
<table id="example1" class="table table-bordered" style="border-style: solid;border-width: 1px;border-color: green">
  <thead>
    <tr>
        <th>Order ID </th>
        <th>Customer Name</th>
        <th>Shipping Address</th>
        <th>Total Price </th>
        <th>Action</th>
    </tr>
  </thead>
  <tbody>  
  
    @foreach($data['orders_list'] as $row)
     <?php $shiping_address=json_decode($row->shiping_address);
                    $order_status=$row->order_status;
                     ?>

   <tr class="table table-bordered table-hover">            
        <td> ORD -  {{sprintf('%06d', $row->order_row_id)}} </td>
        <td> {{$shiping_address->name}} </td>
        <td> 
        <p>  <label>Address:</label>  {{$shiping_address->address}}</p>
        <p> <label> Mobile:</label> {{$shiping_address->mobile}}</p>
             <p> <label>E-mail:</label>  {{$shiping_address->email}}</p>
         </td>
          
        <td> {!! $row->total_price  !!} </td>
        
        <td> <a href="{{asset('/admin/orders/details/')}}/{{$row->order_row_id}}" class="btn btn-default">Details</a> &nbsp;&nbsp;
           <a href="#smsModal" data-toggle="modal" data-mobile="{{$shiping_address->mobile}}" class="btn btn-default">  Send SMS </a>
         
         </td>

    </tr>
  @endforeach
  </tbody>
</table>


  <!--SMS  Modal -->
  <div class="modal fade" id="smsModal" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">@Send SMS</h4>
        </div>
        <div class="modal-body">
          <form method="post" action="{{route('send.sms')}}">
                  {!! csrf_field() !!}
  <div class="form-group">
    <label for="mobile">Mobile</label>
    <input type="text" class="form-control" id="mobile" value="" name="mobile" required>
  </div>
  <div class="form-group">
    <label for="pwd">Message</label>
    <textarea class="form-control" rows="6" name="message" style="resize: none;" id="message" placeholder="Write message here !!!" required></textarea>
  </div>
  <button type="submit" class="btn btn-primary">Send</button>
</form>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
        </div>
      </div>
      
    </div>
  </div>
<script type="text/javascript">
    $('#smsModal').on('show.bs.modal', function (e) {
      var mobile = $(e.relatedTarget).data('mobile');
      $("#mobile").attr("value", mobile);
  });

</script>
@endsection