@extends('remetente')

@section('content')
    <form class="navbar-form navbar-right" role="search">
        <div class="form-group">
            <input type="text" id="txtpesquisar" class="form-control" placeholder="Pesquisar">
        </div>
    </form>

    <table id="tabela" class="table table-striped table-bordered table-hover">
        <thead>
        <tr class="bg-info">
            <th>Id</th>
            <th>Remetente</th>
            <th>Email</th>
            <th>Assunto</th>
            <th>Mensagem</th>
            <th colspan="3">Acções</th>
        </tr>
        </thead>
        <tbody>
        @foreach ($caixas as $caixa)
            <tr>
                <td>{{ $caixa->id }}</td>
                <td>{{ $caixa->user->name}}</td>
                <td>{{ $caixa->email }}</td>
                <td>{{ $caixa->assunto}}</td>
                <td>{{ $caixa->mensagem}}</td>

                <td><a href="{{route('caixas.create',$caixa->id)}}" class="btn btn-warning">Reply</a></td>
                <td><a href="{{url('caixas',$caixa->id)}}" class="btn btn-primary">Ler</a></td>

                <td>
                    {!! Form::open(['method' => 'DELETE', 'route'=>['caixas.destroy', $caixa->id]]) !!}
                    {!! Form::submit('Apagar', ['class' => 'btn btn-danger']) !!}
                    {!! Form::close() !!}
                </td>
            </tr>
        @endforeach

        </tbody>

    </table>

    <div class="form-group">
        <div class="col-sm-offset-2 col-sm-10">
            <a href="{{ url('/')}}" class="btn btn-primary">Voltar</a>
        </div>
    </div>

@endsection
