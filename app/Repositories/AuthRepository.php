<?php
namespace App\Repositories;

use App\Models\User;
use Illuminate\Support\Facades\Auth;

class AuthRepository implements AuthInterface
{
    private $user;
    public function __construct(User $user)
    {
        $this->user = $user;
    }

    public function login($request)
    {
        $credentials = $request->only('email', 'password');

        $token_validity = (24 *60);
        $this->guard()->factory()->setTTL($token_validity);

        if(!$token = $this->guard()->attempt($credentials)){
            return response()->json(['error' => 'Unauthorized'], 401);
        }

        return $this->respondWithToken($token);
    }

    public function register($request){
        $user = $this->user->create([
            'name' => $request->get('name'),
            'email' => $request->get('email'),
            'password' => bcrypt($request->get('password')),
        ]);

        $token = $this->guard()->attempt($request->all());

        return response()->json(
            [
                'message' => "User succesfuly created",
                'user' => $user,
                'token' => $token,
            ], 201);
    }

    public function logout()
    {
        $this->guard()->logout();

        return response()->json(['message' => 'Successfully logged out'],200);
    }

    public function profile(){
        return response()->json($this->guard()->user());
    }

    public function refresh()
    {
        return $this->respondWithToken($this->guard()->refresh());
    }

    protected function respondWithToken($token)
    {
        return response()->json([
            'access_token' => $token,
            'token_type' => 'bearer',
            'expires_in' => $this->guard()->factory()->getTTL() * 60
        ]);
    }

    protected function guard(){
        return Auth::guard();
    }
}
