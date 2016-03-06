$(function(){
	$('.number input').change(function(){
		var count = $(this).val().replace(/[\D]/g,''); 
		count = mycms.is_numeric(count) ? count : 1;
		var inventory = mycms.numeric($(this).attr('inventory'));		
		if(inventory < count){
			count = inventory;	
		}
		$(this).val(count);
		var price = mycms.numeric($(this).parents('ul').find('.price').html());
		var subtotal = (price * count).toFixed(2);
		$(this).parents('ul').find('.subtotal').html(subtotal);
		var discount = $('#discount').html();
		((discount <= 0) || (discount > 10)) && (discount = 10);
		var amount = 0;
		$('.subtotal').each(function(i){
			amount += mycms.numeric($(this).html());
		});
		$('#amount_a').html(amount.toFixed(2)); 
		$('#amount_b').html((amount * discount / 10).toFixed(2)); 
	});
	$('.number input').click(function(){
		$(this).select();	
	});
	$('.attribute').click(function(){
		$(this).parent().find('a').removeClass('attribute_select'); 
		$(this).addClass('attribute_select'); 
		$(this).parent().find('input').val($(this).html()); 
	});
});