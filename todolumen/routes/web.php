<?php

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It is a breeze. Simply tell Lumen the URIs it should respond to
| and give it the Closure to call when that URI is requested.
|
*/

$router->get('/', function () use ($router) {
    return $router->app->version();
});

$router->get('/mhs', 'todoController@index');
$router->get('/mhs/{id}', 'todoController@show');
$router->post('/mhs', 'todoController@store');
$router->put('/mhs/{id}', 'todoController@update');
$router->delete('/mhs/{id}', 'todoController@destroy');
