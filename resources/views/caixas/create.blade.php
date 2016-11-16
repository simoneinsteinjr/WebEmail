@extends('remetente')

@section('content')
    {!! Form::open(['url' => 'caixas', 'files'=>true]) !!}

    @include('shared.alert')

    <div class="form-group col-md-7 col-md-offset-1">
        {!! Form::label('Email', 'Email:') !!}
        {!! Form::text('email',null,['class'=>'form-control']) !!}
    </div>

    <div class="form-group col-md-7 col-md-offset-1">
        {!! Form::label('Assunto', 'Assunto:') !!}
        {!! Form::text('assunto',null,['class'=>'form-control']) !!}
    </div>

    <div class="form-group col-md-7 col-md-offset-1">
        {!! Form::label('Mensagem', 'Mensagem:') !!}
        {!! Form::textarea('mensagem',null,['class'=>'form-control']) !!}
    </div>

<br>
    <div class="form-group col-md-7 col-md-offset-1">
        {!! Form::submit('ENVIAR', ['class' => 'btn btn-primary form-control']) !!}
    </div>
    {!! Form::close() !!}
@stop