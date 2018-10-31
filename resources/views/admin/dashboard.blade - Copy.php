@extends('admin.layouts.app')

@section('content')
 
 <div class="row">
    <div style="padding:20px 0 20px 20px">		
		  <p>Total Categories: {{ $data['count_categories'] }}</p>
		  <p>Total Products: {{ $data['count_products'] }} </p>
   </div>
</div>
@endsection