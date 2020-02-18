<?php

namespace App\Http\Controllers\Event;

use App\Event;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;
use App\Http\Controllers\ApiController;

class EventController extends ApiController
{

    public function __construct(){
        $this->middleware('client.credentials')->only(['index','show']);
        $this->middleware('auth:api')->except(['index','show']);
    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $eventos= Event::all();
        return $this->showAll($eventos);
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
            'image' => 'required|image',
            'date' => 'date',
        ];

        $this->validate($request,$rules);

        $datos = $request->all();

        $datos['image']=$request->image->store('');

        $event = Event::create($datos);

        return $this->showOne($event,201);  
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Event  $event
     * @return \Illuminate\Http\Response
     */
    public function show(Event $event)
    {
        return $this->showOne($event);
    }

    
    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Event  $event
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Event $event)
    {
        $event->fill($request->intersect([
            'name',
            'description',
            'date',
            'image'
        ]));


        if ($request->hasFile('image')) {
            Storage::delete($event->image);

            $event->image = $request->image->store('');
        }

        if ($event->isClean()) {
            return $this->errorResponse('Debe especificar al menos un valor diferente para actualizar', 422);
        }



        $event->save();

        return $this->showOne($event);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Event  $event
     * @return \Illuminate\Http\Response
     */
    public function destroy(Event $event)
    {
        Storage::delete($event->image);

        $event->delete($event);

        return $this->showOne($event);   
    }
}
