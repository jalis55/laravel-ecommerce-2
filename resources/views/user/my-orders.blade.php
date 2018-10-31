@extends('layouts.user-app')
@section('content')
    <section class="content">
      <div class="row">
        <div class="col-xs-12">
     

          <div class="box">
            <div class="box-header">
              <h3 class="box-title">My Order List</h3>
            </div>
            <!-- /.box-header -->
            <div class="box-body">
              <table id="example1" class="table table-bordered table-striped">
                <thead >
                <tr >
                  <th class="text-center">Order No</th>
                  <th class="text-center">Amount</th>
                  <th class="text-center">Date</th>
                 
                </tr>
                </thead>
                <tbody>
                
                @foreach($data['my-orders'] as $row)
                 <tr>
                  <td class="text-center">ORD-{{str_pad( $row->order_row_id, 6, '0', STR_PAD_LEFT)}}</td>
                  <td class="text-right">{{$row->total_price}}</td>
                  <td class="text-center">{{$row->created_at->format('d-M-Y')}}</td>
               
                </tr>
                @endforeach
               
                </tbody>
                <tfoot>
                <tr>
                 <th class="text-center">Order No</th>
                  <th class="text-center">Amount</th>
                  <th class="text-center">Date</th>
                </tr>
                </tfoot>
              </table>
            </div>
            <!-- /.box-body -->
          </div>
          <!-- /.box -->
        </div>
        <!-- /.col -->
      </div>
      <!-- /.row -->
    </section>
    <!-- /.content -->

@endsection

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <!-- page script -->
<script type="text/javascript">
  $(function () {
    $("#example1").DataTable();
    $('#example2').DataTable({
      "paging": true,
      "lengthChange": false,
      "searching": false,
      "ordering": true,
      "info": true,
      "autoWidth": false
    });
  });
</script>