<div id="alert-box" class="alert alert-danger"
     {!! $errors->any() ? '' : "style='display: none'" !!}
>
    <b>Preencha Todos Os Campos!</b>
        <ul>
            @if ($errors->any())
                @foreach($errors->all() as $error)

                @endforeach
                @endif
        </ul>
    </div>

    @if(Session::has('flash_message'))
        <div class="alert alert-info">
            {{Session::get('flash_message')}}
        </div>
    @endif