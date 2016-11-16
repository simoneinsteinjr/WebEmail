<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Caixa extends Model
{
    protected $fillable = [
        'email',
        'assunto',
        'mensagem',
        'user_id'
    ];
    public function User(){
        return $this->belongsTo('App\User');
    }
}
