@extends('admin.layouts.app')

@section('content')

 <form class ="form-horizontal" role = "form" method="post" action="{{ url('admin/menus/store')}}">
      {!! csrf_field() !!}
   <div class = "form-group">
      <label for = "firstname" class = "col-sm-2 control-label">Menu Name</label>
        
      <div class = "col-sm-10">
         <input type="text" required class ="form-control" id="menu_name" name="menu_name" placeholder = "Enter Menu Name">
      </div>
   </div>
   
  
   <div class = "form-group">
      <label for = "firstname" class = "col-sm-2 control-label">Menu Content</label>        
      <div class = "col-sm-10">                                                           
         <script type="text/javascript" src="{{ asset('public\libraries\tinymce\tinymce.min.js') }}"></script>
                    <script type="text/javascript">
                      tinymce.init({
                        selector : "textarea",
                        plugins : ["advlist autolink lists link image charmap print preview anchor", "searchreplace visualblocks code fullscreen", "insertdatetime media table contextmenu paste"],
                        toolbar : "insertfile undo redo | styleselect | bold italic | alignleft aligncenter alignright alignjustify | bullist numlist outdent indent | link image"
                      }); 
                    </script>
         <textarea name='menu_content' style="height:250px" class="text_input_area"></textarea>                             
      </div>
   </div>
   
   <div class = "form-group">
      <label for="parent" class = "col-sm-2 control-label">Save As</label>
        
      <div class = "col-sm-10">
         <select name="parent_id" class = "form-control" required>
         <option value="">Select</option>
         <option value="0" selected="selected"> Main Menu </option>
          @foreach( $data['all_records'] as $row)
          <option value="{{ $row->menu_row_id}}">
               @if($row->level == 0) <b>  @endif  
               @if($row->level == 1) &nbsp; - @endif 
               @if($row->level == 2) &nbsp; &nbsp; - - @endif 
               @if($row->level == 3) &nbsp; &nbsp; &nbsp; - - - @endif       
               @if($row->level == 4) &nbsp; &nbsp; &nbsp; &nbsp; - - - - @endif       
               @if($row->level == 5) &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;  - - - - - @endif       
               @if($row->level > 5)  &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; - - - @endif  
                  
               {{ $row->menu_name }} 
                @if($row->level == 0) </b>  @endif  
           </option>
          @endforeach
          
         </select>
      </div>
   </div>
  
   
   <div class = "form-group">
      <div class = "col-sm-offset-2 col-sm-10">
         <input type ="submit" class = "btn btn-default" value="SAVE" />
      </div>
   </div>
    
</form>
@endsection