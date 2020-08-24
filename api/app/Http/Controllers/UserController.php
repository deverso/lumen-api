<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Services\UserService;

class UserController extends Controller
{
    private $userService;

    public function __construct(UserService $userService)
    {
        $this->userService = $userService;
    }

    public function get($id)
    {
        return $this->userService->get($id);
        
    }
    
    // public function getTransactions($id)
    // {
    //     try {
    //         $user = $this->model->find($id);
    //         $user->payments;
    //         $user->received;

    //         if ($user) {
    //             return response()->json($user, Response::HTTP_OK);
    //         } else {
    //             return response()->json(null, Response::HTTP_OK);
    //         }
    //     } catch (QueryException $exception) {
    //         return response()->json(['error' => 'Something went wrong.'], Response::HTTP_INTERNAL_SERVER_ERROR);
    //     }
        
    // }

}
