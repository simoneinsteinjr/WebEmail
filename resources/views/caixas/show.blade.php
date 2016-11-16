@extends('layout/app')
@section('content')

    <form class="form-horizontal">

        <div class="form-group">
            <label for="email" class="col-sm-2 control-label">Email</label>
            <div class="col-sm-10">
                {{$caixa->email}}
            </div>
        </div>

        <div class="form-group">
            <label for="assunto" class="col-sm-2 control-label">Assunto</label>
            <div class="col-sm-10">
                {{$caixa->assunto}}
            </div>
        </div>

        <div class="form-group">
            <label for="mensagem" class="col-sm-2 control-label">Mensagem</label>
            <div class="col-sm-10">
                {{$caixa->mensagem}}
            </div>
        </div>

        <div class="form-group">
            <div class="col-sm-offset-2 col-sm-10">
                <a href="{{ url('caixas')}}" class="btn btn-primary">Voltar</a>
            </div>
        </div>
    </form>
@stop