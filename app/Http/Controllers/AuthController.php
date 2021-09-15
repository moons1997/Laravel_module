<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use App\Http\Requests\LoginRequest;
use App\Http\Requests\RegisterRequest;
use App\Repositories\AuthInterface;

class AuthController extends Controller
{
    private $authRepository;

    public function __construct(AuthInterface $authRepository)
    {
        $this->authRepository = $authRepository;
        $this->middleware('auth:api', ['except' => ['login', 'register']]);
    }

    /**
     * @OA\Post(
     * path="/auth/login",
     * summary="login in",
     * operationId="authLogin",
     * tags={"Authentication"},
     * operationId="authenticate",
     * @OA\RequestBody(
     *    required=true,
     *    description="Pass user credentials",
     *    @OA\MediaType(
     *      mediaType="application/json",
     *      @OA\Schema(
     *               type="object",
     *               @OA\Property(
     *                   property="email",
     *                   description="email user",
     *                   type="string"
     *               ),
     *               @OA\Property(
     *                   property="password",
     *                   description="password user",
     *                   type="string"
     *               ),
     *      )
     *    ),
     * ),
     *   @OA\Response(response="200",description="Success create element"),
     * )
     * @param LoginForm $request
     */


    public function login(LoginRequest $request)
    {
        return $this->authRepository->login($request);
    }
    /**
     * @OA\Post(
     *   path="/auth/register",
     *   tags={"Authentication"},
     *   summary="register user",
     *   description="",
     *   operationId="register",
     *   @OA\RequestBody(
     *       required=true,
     *       @OA\MediaType(
     *           mediaType="application/json",
     *           @OA\Schema(
     *               type="object",
     *               @OA\Property(
     *                   property="name",
     *                   description="name user",
     *                   type="string"
     *               ),
     *               @OA\Property(
     *                   property="email",
     *                   description="email user",
     *                   type="string"
     *               ),
     *               @OA\Property(
     *                   property="password",
     *                   description="password user",
     *                   type="string"
     *               ),
     *              @OA\Property(
     *                   property="password_confirmation",
     *                   description="password confirmation",
     *                   type="string"
     *               ),
     *           )
     *       )
     *   ),
     *   @OA\Response(response="200",description="Success create element"),
     * )
     * @param RegisterRequest $request
     */
    public function register(RegisterRequest $request)
    {
        return $this->authRepository->register($request);
    }

    public function logout()
    {
        return $this->authRepository->logout();
    }

    public function profile(){
        return $this->authRepository->profile();
    }

    public function refresh()
    {
        return $this->authRepository->refresh();
    }
}

// https://youtu.be/SDIukodcW7c?t=2815

