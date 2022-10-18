<?php

namespace App\Http\Controllers;

use Illuminate\Foundation\Auth\Access\AuthorizesRequests;
use Illuminate\Foundation\Bus\DispatchesJobs;
use Illuminate\Foundation\Validation\ValidatesRequests;
use Illuminate\Http\Request;
use App\Models\Tickets;
use App\Models\TicketTypes;
use App\Models\Barcode;
use App\Models\BarcodeTickets;
use Illuminate\Routing\Controller as BaseController;

class IndexController extends BaseController
{
    use AuthorizesRequests, DispatchesJobs, ValidatesRequests;
    public function indexAction(){
        $tickets = Tickets::get();

        $ticket = Tickets::find(1);
        $barcode = Barcode::find(1);

        $barcodes = $ticket->barcode()->get();
        $ticketsId = $barcode->tickets()->get();
        return view('index', compact('tickets', 'barcodes', 'ticketsId'));
    }
    public function transportAction(){
        return view('transport');
    }
    public function derectionAction(Request $request){
        dd($request->select);
        return view('time');
    }
}
