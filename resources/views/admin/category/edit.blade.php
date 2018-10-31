@extends('admin.layouts.app')

@section('content')

 <form class ="form-horizontal" role = "form" method="post" action="{{ url('admin/categories/update')}}">
      {!! csrf_field() !!}
   <div class = "form-group">
      <label for = "firstname" class = "col-sm-2 control-label">Category Name</label>
        
      <div class = "col-sm-10">
         <input type="text" required value="{{ $data['single_info']->category_name }}" class ="form-control" id="category_name" name="category_name" placeholder = "Enter category Name">
      </div>
   </div>
   
   <div class = "form-group">
      <label for="parent" class = "col-sm-2 control-label">Category</label>
        
      <div class = "col-sm-10">
         <select name="parent_id" class = "form-control" required>
         <option value="" @if( $data['single_info']->parent_id == 0 ) selected = "selected" @endif>Select</option>
         <option value="0" @if( $data['single_info']->parent_id == 0 ) selected = "selected" @endif> Main Category </option>
          @foreach( $data['all_records'] as $row)
          <option value="{{ $row->category_row_id }}" @if( $data['single_info']->parent_id == $row->category_row_id ) selected = "selected" @endif>
               @if($row->level == 0) <b>  @endif  
               @if($row->level == 1) &nbsp; - @endif 
               @if($row->level == 2) &nbsp; &nbsp; - - @endif 
               @if($row->level == 2) &nbsp; &nbsp; - - @endif     
               @if($row->level == 3) &nbsp; &nbsp; &nbsp; - - - @endif       
               @if($row->level == 4) &nbsp; &nbsp; &nbsp; &nbsp; - - - - @endif       
               @if($row->level == 5) &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;  - - - - - @endif       
               @if($row->level > 5)  &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; - - - @endif  
                          
               {{ $row->category_name }} 
                @if($row->level == 0) </b>  @endif  
           </option>
          @endforeach
          
         </select>
      </div>
   </div>
  
    
   <div class = "form-group">
      <div class = "col-sm-offset-2 col-sm-10">
      <input type="hidden"  name="category_row_id" value="{{ $data['single_info']->category_row_id }}" />
      <input type ="submit" class = "btn btn-default" value="SAVE" />
      </div>
   </div>
    
</form>
@endsection