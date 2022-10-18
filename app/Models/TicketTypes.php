<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class TicketTypes extends Model
{
    use HasFactory;
    public $timestamps = false;
    protected $table = 'ticket_types';
    public function tickets(){
        return $this->belongsTo(Tickets::class, 'ticket_types_id');
    }
}
