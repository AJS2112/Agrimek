<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use App\Event;
use Illuminate\Database\Eloquent\SoftDeletes;

class Project extends Model
{
	use SoftDeletes;

	protected $dates= ['deleted_at'];

    protected $fillable=[
    	'name',
    	'description',
    	'start_date',
        'image',
    ];

    public function events(){
    	return $this->hasMany(Event::class);
    }
}
