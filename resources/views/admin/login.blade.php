<!DOCTYPE html>
<html lang="en">
<head>
    <title>Admin Panel</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="{{ url('/public')}}/bootstrap/bootstrap.min.css">
    <link rel="stylesheet" href="{{ url('/public')}}/style.css">
    <script src="{{ url('/public')}}/scripts//jquery.min.js"></script>
    <script src="{{ url('/public')}}/bootstrap/bootstrap.min.js"></script>
</head>
<body>


<div class="container">
    <div class="row" style="margin:50px 0 0 0">

        <div class="col-md-6 col-md-offset-3">
            <div class="panel panel-default" style="text-align:center">
                <div class="panel-heading" >Admin Login</div>
                @if (count($errors) > 0)
                    <div class="alert alert-danger" style="color:#ff0000;font-weight:bold">
                        <ul style="list-style-type:none;">
                            @foreach ($errors->all() as $error)
                                <li>{{ $error }}</li>
                            @endforeach
                        </ul>
                    </div>
                @endif

                <div class="panel-body">
                    <form class="form-horizontal" role="form" method="POST" action="{{ url('/postAdminLogin') }}">
                        {!! csrf_field() !!}
                        <?php //print_r($errors); ?>
                        <div class="form-group{{ $errors->has('email') ? ' has-error' : '' }}">
                            <label class="col-md-4 control-label">E-Mail Address </label>

                            <div class="col-md-6">
                                <input type="email" class="form-control" name="email">

                                @if ($errors->has('email'))
                                    <span class="help-block">
                                        <strong>{{ $errors->first('email') }}</strong>
                                    </span>
                                @endif
                            </div>
                        </div>

                        <div class="form-group{{ $errors->has('password') ? ' has-error' : '' }}">
                            <label class="col-md-4 control-label">Password</label>

                            <div class="col-md-6">
                                <input type="password" class="form-control" name="password" >

                                @if ($errors->has('password'))
                                    <span class="help-block">
                                        <strong>{{ $errors->first('password') }}</strong>
                                    </span>
                                @endif
                            </div>
                        </div>


                        <div class="form-group">
                            <div class="col-md-6 col-md-offset-4">
                                <button type="submit" class="btn btn-primary">
                                    <i class="fa fa-btn fa-sign-in"></i>Login
                                </button>
                            </div>
                        </div>

                    </form>
                </div>
            </div>
        </div>
    </div>
</div>

</body>
</html>

