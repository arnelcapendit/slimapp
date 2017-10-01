$(function(){

var $customers = $('#customers');
var $first_name = $('#first_name');
var $last_name = $('#last_name');
var $email = $('#email');
var $phone = $('#phone');
var $address = $('#address');
var $city = $('#city');
var $state = $('#state');

var customerTemplate = $('#order-template').html();

function addCustomer(customer){
	$customers.append(Mustache.render(customerTemplate, customer));
	//$customers.append('<li>Name: '+ customer.first_name+', SurName: '+customer.last_name+'</li>');
}


 $.ajax({
 	type: 'GET',
 	url: 'http://localhost/slimapp/public/index.php/api/customers',
 	dataType: 'json',
 	success: function(customers){
 		$.each(customers, function(i, customer){
 			addCustomer(customer);	
 		});
 	},
 	error: function(){
 		alert('Error Loading Customer');
 	}
 });


 

$('#addCustomer').click(function(){

var customer = {
 	first_name: $first_name.val(),
 	last_name: $last_name.val(),
 	email: $email.val(),
 	phone: $phone.val(),
 	address: $address.val(),
 	city: $city.val(),
 	state: $state.val(),
 };


 	//event.preventDefault();
	$.ajax({
 	type: 'POST',
 	url: 'http://localhost/slimapp/public/index.php/api/customer/add',
 	data: customer,
 	success: function(newCustomer){
 			addCustomer(newCustomer);
 	},
 	error: function(){
 		alert('Error Saving Customer');
 	}

 });

});
 

 //$('.remove').click(function(){
 	//var test = $(this).attr('data-id');
 	//console.log(test);
 	//alert('hi');

 //});

$customers.delegate('.remove', 'click', function(){

	var $li = $(this).closest('li');
	$.ajax({
		type: 'DELETE',
		url: 'http://localhost/slimapp/public/index.php/api/customer/delete/' + $(this).attr('data-id'),
		success: function(){
			$li.fadeOut(300, function(){
				$(this).remove();
			});
		}

	});

});


$customers.delegate('.editOrder', 'click', function(){
	var $li = $(this).closest('li');
	$li.find('input.name').val( $li.find('span.name').html() );
	$li.find('input.drink').val( $li.find('span.drink').html() );
	$li.addClass('edit');
});

$customers.delegate('.cancelEdit', 'click', function(){
	$(this).closest('li').removeClass('edit');
});

$customers.delegate('.saveEdit', 'click', function(){
	var $li = $(this).closest('li');
	var customer = {
		name : $li.find('input.name').val(),
		drink : $li.find('input.drink').val(),	
	};

	$.ajax({
 	type: 'PUT',
 	url: 'http://localhost/slimapp/public/index.php/api/customer/update/' + $li.attr('data-id'),
 	data: customer,
 	success: function(newCustomer){
 			$li.find('span.name').html(customer.first_name);
 			$li.find('span.drink').html(customer.last_name);
 			$li.removeClass('edit');
 					
 	},
 	error: function(){
 		alert('Error updating Customer');
 	}	

 });

	});




});