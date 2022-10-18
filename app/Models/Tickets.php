<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Tickets extends Model
{
    use HasFactory;
    protected $table = 'tickets';
    public function ticketTypes(){
        
        return $this->hasMany(TicketTypes::class, 'ticket_types_id');
    }
    public function barcode(){
        return $this->belongsToMany(Barcode::class, 'barcode_tickets', 'tickets_id', 'barcode_id');
        //belongsToMany(, 'barcode_tickets', 'tickets_id', 'barcode_id');
    }
}
