<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Barcode extends Model
{
    use HasFactory;
    protected $table = 'barcode';
    public function tickets()
    {
        return $this->belongsToMany(Tickets::class, 'barcode_tickets', 'barcode_id', 'tickets_id' );
    }
}
