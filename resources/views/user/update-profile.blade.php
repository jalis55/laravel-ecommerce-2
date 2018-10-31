@extends('layouts.user-app')
@section('content')

<div class="tab-pane" id="settings">
                <form class="form-horizontal">
                  <div class="form-group">
                    <label for="name"  class="col-sm-2 control-label">Name</label>

                    <div class="col-sm-10">
                      <input type="text" class="form-control" value="{{Auth::user()->name}}" id="name" name="name" placeholder="Name">
                    </div>
                  </div>
                  <div class="form-group">
                    <label for="phone" class="col-sm-2 control-label">Phone</label>

                    <div class="col-sm-10">
                      <input type="text" class="form-control" id="phone" placeholder="phone">
                    </div>
                  </div>
                  <div class="form-group">
                    <label for="address" class="col-sm-2 control-label">Address</label>

                    <div class="col-sm-10">
                      <input type="text" class="form-control" id="address " name="address" placeholder="Address">
                    </div>
                  </div>
                   <div class="form-group">
                    <label for="occupation" class="col-sm-2 control-label">Occupation</label>

                    <div class="col-sm-10">
                      <input type="text" class="form-control" id="occupation " name="occupation" placeholder="Occupation">
                    </div>
                  </div>
                  <div class="form-group">
                    <label for="about" class="col-sm-2 control-label">About</label>

                    <div class="col-sm-10">
                      <textarea class="form-control" id="about" placeholder="about" rows="4" maxlength="150"></textarea>
                    </div>
                  </div>
                  <div class="form-group">
                    <label for="inputSkills" class="col-sm-2 control-label">Skills</label>

                    <div class="col-sm-10">
                      <input type="text" class="form-control" id="inputSkills" placeholder="Skills">
                    </div>
                  </div>
                  <div class="form-group">
                    <div class="col-sm-offset-2 col-sm-10">
                      <div class="checkbox">
                        <label>
                          <input type="checkbox"> I agree to the <a href="#">terms and conditions</a>
                        </label>
                      </div>
                    </div>
                  </div>
                  <div class="form-group">
                    <div class="col-sm-offset-2 col-sm-10">
                      <button type="submit" class="btn btn-danger">Submit</button>
                    </div>
                  </div>
                </form>
              </div>

              @endsection