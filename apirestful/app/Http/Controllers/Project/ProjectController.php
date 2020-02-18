<?php

namespace App\Http\Controllers\Project;

use App\Project;
use Illuminate\Http\Request;
use App\Http\Controllers\ApiController;

class ProjectController extends ApiController
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
        $proyectos= Project::all();
        return $this->showAll($proyectos);
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
            'start_date' => 'date',
            'image' => 'required|image',
        ];

        $this->validate($request,$rules);

        $datos = $request->all();

        $datos['image']=$request->image->store('');

        $project = Project::create($datos);

        return $this->showOne($project,201);  
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Project  $project
     * @return \Illuminate\Http\Response
     */
    public function show(Project $project)
    {
        return $this->showOne($project);
    }

    
    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Project  $project
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Project $project)
    {
        $project->fill($request->intersect([
            'name',
            'description',
            'start_date',
            'image'
        ]));

        if ($request->hasFile('image')) {
            Storage::delete($event->image);

            $event->image = $request->image->store('');
        }


        if ($project->isClean()) {
            return $this->errorResponse('Debe especificar al menos un valor diferente para actualizar', 422);
        }

        $project->save();

        return $this->showOne($project);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Project  $project
     * @return \Illuminate\Http\Response
     */
    public function destroy(Project $project)
    {
        $project->delete();
        return $this->showOne($project);   
    }
}
