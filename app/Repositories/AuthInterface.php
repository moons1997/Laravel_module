<?php
namespace App\Repositories;

interface AuthInterface
{
    public function login($request);
    public function register($request);
    public function logout();
    public function profile();
    public function refresh();
}
