<?php

namespace App\Http\Controllers;
use App\Caixa;
use Auth;
use App\Http\Requests\CaixaRequest;
use Illuminate\Http\Request;

class CaixaController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }

    public function index(Request $request)
    {
        $caixas = Caixa::all();
        return view('caixas.index',compact('caixas'));
    }

    public function create()
    {
        return view('caixas.create');
    }

    public function store(CaixaRequest $rq)
    {
        $user = Auth::user();
        $caixa = new Caixa(array (
            "email" => $rq->get("email"),
            "assunto" => $rq->get("assunto"),
            "mensagem" => $rq->get("mensagem"),
            "user_id"=>$user->id
        ));

        $caixa->save();
        session()->flash('flash_message', 'Eviado Com Sucesso');
        return redirect('caixas');
    }

    public function show($id)
    {
        $caixa=Caixa::find($id);
        return view('caixas.show',compact('caixa'));
    }

    public function destroy($id)
    {
        Caixa::find($id)->delete();
        session()->flash('flash_message', 'Removido Com Sucesso');
        return redirect('caixas');
    }
}
