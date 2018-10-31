<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| This file is where you may define all of the routes that are handled
| by your application. Just tell Laravel the URIs it should respond
| to using a Closure or controller method. Build something great!
|
*/

Route::get('/', 'HomeController@index');
Route::get('/product/details/{id}','HomeController@productDetails');
Route::get('/category/{category_slug}','HomeController@categoryWiseProducts');
Route::get('/search/{$name}/{$category_row_id}','HomeController@search');

Route::get('/add-to-cart/{product_id}', 'CartController@addToCart');
Route::post('/post-add-to-cart','CartController@postAddToCart');

Route::post('/add-to-cart','CartController@addToCart');

Route::get('/mycart', 'CartController@mycart');

Route::post('/update-cart', 'CartController@updateCart');
Route::post('/cartItemDelete', 'CartController@cartItemDelete');
Route::any('/cartItemDeleteAll', 'CartController@cartItemDeleteAll');

//order process
Route::any('/processPayment', 'OrderController@processPayment');    
Route::post('/confirmOrder/{id}', 'OrderController@confirmOrder');

//checkout

Route::get('/checkoutPage', 'CartController@checkout1');
Route::post('/confirm-order','CartController@confirmOrder');
Route::post('/checkout', 'CartController@checkout');
Route::post('/checkoutWithregistration', 'CartController@checkoutWithregistration');


//Register....
Route::get('/user-registration', 'Auth\CommonController@showRegistrationForm')->name('user.registration');
Route::post('/user-registration', 'Auth\CommonController@register')->name('user.registration.submit');
//log in 
Route::post('/log-in', 'Auth\CommonController@login')->name('gaust.login');
Route::get('users/logout','Auth\LoginController@userlogout')->name('user.logout');



Route::get('/about-us', function () {	
    return view('about_us');
});
Route::get('/contact-us', function () {	
    return view('contact_us');
});

    Auth::routes();
    Route::get('/home', 'HomeController@index');


    Route::group(['middleware' => 'admin', 'namespace' => 'Admin'], function () {           
    Route::get('/admin', 'LoginController@login');
    Route::post('/postAdminLogin', 'LoginController@postAdminLogin'); 
    Route::get('/admin/logout', 'LoginController@logout');        
    Route::get('/admin/dashboard', 'DashboardController@index');
    
	Route::get('/admin/products', 'ProductController@index');	
	Route::get('/admin/products/create', 'ProductController@create');
    Route::post('/admin/products/store', 'ProductController@store');    
    Route::get('/admin/products/edit/{id}', 'ProductController@edit');
    Route::post('/admin/products/update', 'ProductController@update');
    Route::get('/admin/products/show/{id}', 'ProductController@show');
    Route::get('/admin/products/deleteRecord/{id}', 'ProductController@deleteRecord');
    Route::get('/admin/products/deleteImageOnly/{id}/{image_name}', 'ProductController@deleteImageOnly');
	
	Route::get('/admin/categories', 'CategoryController@index');
	Route::get('/admin/categories/create', 'CategoryController@create');
	Route::post('/admin/categories/store', 'CategoryController@store');	
	Route::get('/admin/categories/edit/{id}', 'CategoryController@edit');
	Route::post('/admin/categories/update', 'CategoryController@update');
	Route::get('/admin/categories/show/{id}', 'CategoryController@show');
    Route::get('/admin/categories/deleteRecord/{id}', 'CategoryController@deleteRecord');
    Route::get('/admin/products/deleteImageOnly/{id}/{image_name}', 'ProductController@deleteImageOnly');
    Route::get('/admin/downloadExcel/{type}', 'ProductController@export');
    Route::post('/admin/importExcel', 'ProductController@importExcel');
	
    //order list and details
    Route::get('/admin/orders', 'OrderController@index');
    Route::get('/admin/orders/details/{tracking_number}', 'OrderController@orderDetails');
    Route::post('/admin/send-sms','OrderController@sendSms')->name('send.sms');
    Route::get('/admin/download/{order_id}','OrderController@downloadPdf')->name('download.pdf');
    Route::resource('/admin/coupons', 'CouponController@index');

    
    
    Route::get('/admin/menus', 'MenuController@index');    
    Route::get('/admin/menus/create', 'MenuController@create');
    Route::post('/admin/menus/store', 'MenuController@store');    
    Route::get('/admin/menus/edit/{id}', 'MenuController@edit');
    Route::post('/admin/menus/update', 'MenuController@update');    
    Route::get('/admin/menus/deleteRecord/{id}', 'MenuController@deleteRecord');

    
    Route::get('/thankyou', function () { 
    return view('thankyou');
});

	

});
 Route::get('/test', 'TempController@test');
 Route::get('/thankyou', 'CartController@thankyou');

//--------------user profile------------------
Route::get('/my-account','ProfileController@myAccount')->name('my.account');
Route::get('/my-orders','ProfileController@myOrders')->name('my.orders');
Route::get('/my-pending-order','ProfileController@myPendingOrders')->name('my.pending.order');
Route::get('/update-profile','ProfileController@showUpdateProfileForm')->name('update.profile');
Route::post('/update-profile','ProfileController@updateProfile')->name('update.profile.submit');
Route::get('/reset-password','ProfileController@showResetPasswordForm')->name('passwords.reset');
Route::post('/reset-password', 'ProfileController@resetPassword')->name('passwords.reset.submit');
Route::get('/my-wishlist','ProfileController@myWishList')->name('my.wishlist');
Route::get('/add-to-wishlist/{product_id}','ProfileController@addToWishList');
Route::get('/give-rating/{product_id}/{rating}','ProfileController@giveRating');




