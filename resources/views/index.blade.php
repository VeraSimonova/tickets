<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Tickets</title>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
</head>
<body>
	<h3>Таблица купленных билетов</h3>
	<table class="table">
		<thead>
		    <tr>
		      <th scope="col">id</th>
		      <th scope="col">event_id</th>
		      <th scope="col">event_date</th>
		      <th scope="col">ticket_adult_price</th>
		      <th scope="col">ticket_adult_quantity</th>
		      <th scope="col">ticket_kid_price</th>
		      <th scope="col">ticket_kid_quantity</th>
		      <th scope="col">barcode</th>
		      <th scope="col">user_id</th>
		      <th scope="col">equal_price</th>
		      <th scope="col">created</th>
		      <th scope="col">ticket_types_id</th>

		    </tr>
		</thead>
		@foreach($tickets as $ticket)
		  <tbody>
		    <tr>
		      <th scope="row">{{$ticket->id}}</th>
		      <td>{{$ticket->event_id}}</td>
		      <td>{{$ticket->event_date}}</td>
		      <td>{{$ticket->ticket_adult_price}}</td>
		      <td>{{$ticket->ticket_adult_quantity}}</td>
		      <td>{{$ticket->ticket_kid_price}}</td>
		      <td>{{$ticket->ticket_kid_quantity}}</td>
		      <td>{{$ticket->barcode}}</td>
		      <td>{{$ticket->user_id}}</td>
		      <td>{{$ticket->equal_price}}</td>
		      <td>{{$ticket->created}}</td>
		   
		      <td>{{$ticket->ticket_types_id}}</td>

		    </tr>
		  </tbody>
			<!-- <p>{{$ticket->barcode()->pluck('code')->implode(', ')}}</p> -->
		@endforeach
	</table>
	<h3>Таблица баркодов для заказа</h3>
	
	<table class="table">
		<thead>
		    <tr>
		      <th scope="col">barcode</th>
		      <th scope="col">id_ticket</th>
		    </tr>
		</thead>
		
			@foreach($barcodes as $barcode)
				<tbody>
		    		<tr>
		      			<th scope="row">{{$barcode->code}}</th>
		      			@foreach($ticketsId as $ticketId)
				            <td>{{$ticketId->id}}</td>
				        @endforeach  
		      			
		    		</tr>
		 		</tbody> 
	        @endforeach  
	    
	</table>
</body>
</html>


