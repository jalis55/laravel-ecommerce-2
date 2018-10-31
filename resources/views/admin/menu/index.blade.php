@extends('admin.layouts.app')

@section('content')
<table class="table table-hover">
  <thead>
    <tr>
      <th>Menu Name </th>	  
      <th>Menu Content</th>      
      <th>Action</th>
	  <th>&nbsp;</th>      
    </tr>
  </thead>
  <tbody>  
  
    @foreach($data['all_records'] as $row)    
	 <tr>            
      <td> 
       @if($row->level == 0) <b>  @endif 
       @if($row->level == 1) &nbsp; - @endif   
       @if($row->level == 2) &nbsp; &nbsp; - - @endif       
       @if($row->level == 3) &nbsp; &nbsp; &nbsp; - - - @endif       
       @if($row->level == 4) &nbsp; &nbsp; &nbsp; &nbsp; - - - - @endif       
       @if($row->level == 5) &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;  - - - - - @endif       
       @if($row->level > 5)  &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; - - - @endif  
                    
       {{ $row->menu_name }} 
       @if($row->level == 0) </b>  @endif 
       </td> 
      <td> {!! str_limit($row->menu_content, 150)  !!}   </td> 
      <td>
      
       <a href="{{ url('/')}}/admin/menus/edit/{{$row->menu_row_id}}"> Edit </a>
        @if( !$row->has_child )   
        <!-- | <a href="javascript:void(0)" class="deleteLink" deleteID="{{$row->menu_row_id}}" >Delete  </a> -->
        @endif
        
       </td>
      <td>&nbsp;</td>
    </tr>
	@endforeach
  </tbody>
</table>

<script type="text/javascript"> 
 $('.deleteLink').click( function() {
  if( confirm('Are you sure to Delete ? ') )
  {
   var deleteID = $(this).attr('deleteID');   
    window.location.href = "{{ url('/')}}/admin/menus/deleteRecord/" + deleteID;    
  }
        
 });
 
 </script> 

@endsection