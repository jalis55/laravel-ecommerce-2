@extends('layouts.app')

@section('content')
<div class="container">


<h3 class="text-center" style="padding-top: 10px"> Your order no is :ORD-{{$data['order_no']}}</h3>
		<div class="thank" style="padding:25px 0px 20px 125px;">

			<img src="{{ url('/') }}/public/images/thank.jpg" alt="logo" style="height: 300px; width: 400px; margin-left: 240px;" class="logo-default" /> 
		</div>
		<h6 class="emo" style="text-align: center;">We Are feeling Lucky To have You</h6>
		</div>
@endsection
