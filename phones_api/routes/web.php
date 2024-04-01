<?php

/** @var \Laravel\Lumen\Routing\Router $router */

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
*/


//matches localhost:8888/lumen/public/
$router->get('/', function () use ($router) {
    return $router->app->version();
});

$router->get('/phone', 'PhoneController@index');
$router->get('/phone/{id}', 'PhoneController@show');
$router->get('/images/{imageName}', 'ImageController@show');













