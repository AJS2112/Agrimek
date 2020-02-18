<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use App\Project;
use Illuminate\Database\Eloquent\SoftDeletes;

class Event extends Model
{
    use SoftDeletes;

    protected $dates= ['deleted_at'];

    protected $fillable=[
    	'name',
    	'description',
    	'date',
    	'image',
    	'project_id'
    ];

    public function project(){
    	return $this->belongsTo(Project::class);
    }
}
