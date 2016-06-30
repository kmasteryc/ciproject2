<?php
defined('BASEPATH') OR exit('No direct script access allowed');

/*
| -------------------------------------------------------------------------
| URI ROUTING
| -------------------------------------------------------------------------
| This file lets you re-map URI requests to specific controller functions.
|
| Typically there is a one-to-one relationship between a URL string
| and its corresponding controller class/method. The segments in a
| URL normally follow this pattern:
|
|	example.com/class/method/id/
|
| In some instances, however, you may want to remap this relationship
| so that a different class/function is called than the one
| corresponding to the URL.
|
| Please see the user guide for complete details:
|
|	https://codeigniter.com/user_guide/general/routing.html
|
| -------------------------------------------------------------------------
| RESERVED ROUTES
| -------------------------------------------------------------------------
|
| There are three reserved routes:
|
|	$route['default_controller'] = 'welcome';
|
| This route indicates which controller class should be loaded if the
| URI contains no data. In the above example, the "welcome" class
| would be loaded.
|
|	$route['404_override'] = 'errors/page_missing';
|
| This route will tell the Router which controller/method to use if those
| provided in the URL cannot be matched to a valid route.
|
|	$route['translate_uri_dashes'] = FALSE;
|
| This is not exactly a route, but allows you to automatically route
| controller and method names that contain dashes. '-' isn't a valid
| class or method name character, so it requires translation.
| When you set this option to TRUE, it will replace ALL dashes in the
| controller and method URI segments.
|
| Examples:	my-controller/index	-> my_controller/index
|		my-controller/my-method	-> my_controller/my_method
*/
$route['default_controller'] = 'home_controller';
$route['user/(.*)'] = 'user_controller/$1';

$route['testmodule'] = 'test/test';
$route['admin'] = 'admin/dash_controller/index';

$route['cate/(.*)'] = 'cate_controller/$1';
$route['comment/(.*)'] = 'comment_controller/$1';
$route['comment/(.*)/([0-9])+'] = 'comment_controller/$1/$2';
$route['cart/(.*)'] = 'cart_controller/$1';
$route['admin/(.*)'] = 'admin/$1_controller';
$route['vendor/(.*)'] = 'vendor_controller/$1';
$route['image/(.*)'] = 'image_controller/$1';
$route['spec/(.*)'] = 'spec_controller/$1';
$route['bill/(.*)'] = 'bill_controller/$1';
$route['gift/(.*)'] = 'gift_controller/$1';
$route['report/(.*)'] = 'report_controller/$1';

$route['product/show'] = 'product_controller/show';
$route['product/search(.*)'] = 'product_controller/search$1';
$route['product/edit/([0-9]+)'] = 'product_controller/edit/$1';
$route['product/show'] = 'product_controller/show';
$route['product/create'] = 'product_controller/create';
$route['product/ajax_delete'] = 'product_controller/ajax_delete';
$route['product/index'] = 'product_controller/index';
$route['product/test'] = 'product_controller/test';
$route['product/get_info/([0-9]+)'] = 'product_controller/get_info/$1';

$route['product/([a-zA-Z0-9\-]+)'] = 'product_controller/view_cate/$1';
$route['product/([a-zA-Z0-9\-]+)/([a-zA-Z0-9\-]+)'] = 'product_controller/view_vendor/$1/$2';
$route['product/([a-zA-Z0-9\-]+)/([a-zA-Z0-9\-]+)/([a-zA-Z0-9\-]+)'] = 'product_controller/view_product/$1/$2/$3';

$route['spec/edit/[0-9]+'] = 'spec_controller/$1';

$route['404_override'] = '';
$route['translate_uri_dashes'] = FALSE;
