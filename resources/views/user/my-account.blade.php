@extends('layouts.user-app')
@section('content')
  <section class="content">

      <div class="row">
        <div class="col-md-3">

          <!-- Profile Image -->
          <div class="box box-primary">
            <div class="box-body box-profile">
              <img class="profile-user-img img-responsive img-circle" src="{{asset('/public/images/users/')}}/{{Auth::user()->image}}" alt="User profile picture">

              <h3 class="profile-username text-center">{{Auth::user()->name}}</h3>

              <p class="text-muted text-center">{{Auth::user()->occupation}}</p>

             
            </div>
            <!-- /.box-body -->
          </div>
          <!-- /.box -->

          <!-- /.box -->
        </div>
        <!-- /.col -->
        <div class="col-md-9">
          <div class="nav-tabs-custom">
            <ul class="nav nav-tabs">
              <li class="active"><a href="#about_me" data-toggle="tab">About Me</a></li>
              <li><a href="#basic_info" data-toggle="tab">Basic Information</a></li>
              <li><a href="#education" data-toggle="tab">Education</a></li>
              <li><a href="#skills" data-toggle="tab">Skills</a></li>
               <li><a href="#experience" data-toggle="tab">Experience</a></li>
            </ul>
            <div class="tab-content">
              <div class="active tab-pane" id="about_me">
                <!-- Post -->
                <div class="container">
                <p>{{Auth::user()->about}}</p>
                </div>
                <!-- /.post -->
              </div>
              <!-- /.tab-pane -->
              <div class="tab-pane" id="basic_info">
              	<div class="form-group">
              			<label>Name:</label> {{Auth::user()->name}}
              	</div>
              <div class="form-group">
              			<label>Address:</label>  {{Auth::user()->address}}
              	</div>
              	 <div class="form-group">
              			<label>Phone:</label>  {{Auth::user()->phone}}
              	</div>
              	<div class="form-group">
              			<label>Email:</label>  {{Auth::user()->email}}
              	</div>
                <!-- The timeline -->
              
              </div>
              <!-- /.tab-pane -->

              <div class="tab-pane" id="education">

              	 <strong><i class="fa fa-book margin-r-5"></i> Graduation</strong>

               <p class="text-muted">
              	<div class="form-group">
              		 <label>Subject:</label> Computer Science <br>
              		 <label>University:</label>	Islamic University<br>
              		 <label>Passing Year:</label> 2014<br>
              		 <label>Result:</label>3.57 out of 4
              	</div>
               
              </p>
                <strong><i class="fa fa-book margin-r-5"></i> H.S.C</strong>

               <p class="text-muted">
              	<div class="form-group">
              		 <label>Group:</label>Science <br>
              		 <label>College:</label> Nilphamari Govt. College<br>
              		 <label>Passing Year:</label> 2010<br>
              		 <label>Result:</label>5.00 out of 5
              	</div>
               
              </p>
                <strong><i class="fa fa-book margin-r-5"></i> S.S.C</strong>

               <p class="text-muted">
              	<div class="form-group">
              		 <label>Group:</label>Science <br>
              		 <label>College:</label> Nilphamari Govt. College<br>
              		 <label>Passing Year:</label> 2008<br>
              		 <label>Result:</label>5.00 out of 5
              	</div>
               
              </p>
              </div>

               <div class="tab-pane" id="skills">

              
              <strong><i class="fa fa-pencil margin-r-5"></i>My Skills</strong><br><br>

              <p style="font-size: 25px">
              	<span class="label label-danger">Dot.NET</span>
                <span class="label label-success">HTML</span>
                <span class="label label-danger">UI Design</span>
                <span class="label label-success">SQL</span>
                <span class="label label-info">Javascript</span>
                <span class="label label-warning">PHP</span>
                <span class="label label-primary">Node.js</span>
              </p>

              
              </div>

                 <div class="tab-pane" id="experience">

              
              <strong><i class="fa fa-pencil margin-r-5"></i>Experience</strong><br><br>

             <ol type="i">
               <li> {{Auth::user()->experience}}</li>
             </ol>

              
              </div>
              <!-- /.tab-pane -->
            </div>
            <!-- /.tab-content -->
          </div>
          <!-- /.nav-tabs-custom -->
        </div>
        <!-- /.col -->
      </div>
      <!-- /.row -->

    </section>
@endsection