<?php

namespace App\Http\Controllers;

use Illuminate\Foundation\Auth\Access\AuthorizesRequests;
use Illuminate\Foundation\Bus\DispatchesJobs;
use Illuminate\Foundation\Validation\ValidatesRequests;
use Illuminate\Routing\Controller as BaseController;

/**
     * @OA\Info(
     *      version="1.0.0",
     *      title="L5 OpenApi",
     *      description="L5 Swagger OpenApi learn",
     *      @OA\Contact(
     *          email="umar1997mengliyev@gmail.com"
     *      ),
     *     @OA\License(
     *         name="Apache 2.0",
     *         url="http://www.apache.org/licenses/LICENSE-2.0.html"
     *     )
     * )
     * @OA\Server(
     *  url="http://modul-laravel/api"
     * )
     * @OA\SecurityScheme(
     *   securityScheme="bearerAuth",
     *   in="header",
     *   name="Authorization",
     *   type="http",
     *   scheme="bearer",
     *   bearerFormat="JWT",
     * ),
**/

class Controller extends BaseController
{
    use AuthorizesRequests, DispatchesJobs, ValidatesRequests;
}
