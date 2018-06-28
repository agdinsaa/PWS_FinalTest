<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\DB;
use Illuminate\Database\Eloquent\Model;
use App\Http\Model\ModelTodo;
use Illuminate\Http\Request;

class todoController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        //
    }
	
	public function index(){
		$data = ModelTodo::all();
		return response($data);
	}
	
	public function show($id){
		$data = ModelTodo::where('id',$id)->get();
		return response($data);
	}
	
	public function store (Request $request){
		$data = new ModelTodo();
		$data->nim = $request->input('nim');
		$data->nama = $request->input('nama');
		$data->notlp = $request->input('notlp');
		$data->alamat = $request->input('alamat');
		$data->email = $request->input('email');
		$data->fakultas = $request->input('fakultas');
		$data->prodi = $request->input('prodi');
		$data->save();
		
		return response ('Berhasil Tambah Data');
	}
	
	 public function update(Request $request,$id)
    {
        $data = ModelTodo::findOrFail($id);
        $data->update($request->all());
		
        return response($data);
    }
	
	 public function destroy($id)
    {
       $data = ModelTodo::findOrFail($id);
	   $data->delete();
	   
	   return response($data);
    }
}
