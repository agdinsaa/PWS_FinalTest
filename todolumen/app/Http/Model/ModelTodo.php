<?php

namespace App\Http\Model;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class ModelTodo extends Model
{
	use SoftDeletes;
	
    protected $table = 'mhs';
	protected $fillable = [
        'nim','nama','notlp','alamat','email','fakultas','prodi'
    ];
}
