<?php

namespace App\Http\Controllers\User;

use Illuminate\Http\Request;
use App\Http\Controllers\ApiController;

use App\User;

class UserController extends ApiController
{
    public function __construct(){
        $this->middleware('client.credentials')->only(['store']);
        $this->middleware('auth:api')->except(['store']);
    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $usuarios= User::all();
        return $this->showAll($usuarios);
    }
    

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $rules=[
            'name' => 'required',
            'email' => 'required|email|unique:users',
            'password' => 'required|min:6|confirmed'
        ];

        $this->validate($request,$rules);

        $datos = $request->all();

        $datos['password'] = bcrypt($request->password);

        $usuario = User::create($datos);

        return $this->showOne($usuario,201);  
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show(User $user)
    {
        return $this->showOne($user);
    }

    
    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, User $user)
    {
        $rules=[
            'email' => 'email|unique:users,email,'. $user->id,
            'password' => 'min:6|confirmed'
        ];

        $this->validate($request,$rules);
        
        if ($request->has('name')) {
            $user->name = $request->name;
        }
        
        if ($request->has('email') && $user->email != $request->email) {
            $user->email = $request->email;
        }
        
        if ($request->has('password')) {
            $user->password = bcrypt($request->password);
        }
        
        if (!$user->isDirty()) {
            return  $this->errorResponse('Se debe especificar al menos un valor diferente para actualizar',422);
        }        
        
        $user->save();

        return $this->showOne($user);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy(User $user)
    {

        $user->delete();

        return $this->showOne($user);  
    }
}
