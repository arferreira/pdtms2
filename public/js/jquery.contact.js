jQuery(document).ready(function($) {

	$('.contactform').submit(function() {
		var action = $(this).attr('action');
		var values = $(this).serialize();

		$('#submit').attr('disabled', 'disabled').after('<img src="images/ajax-loader.gif" class="loader" />');

		$("#form-message").slideUp(750, function() {

			$('#form-message').hide();

			$.post(action, values, function(data) {
				$('#form-message').html(data);
				$('#form-message').slideDown('slow');
				$('.contactform img.loader').fadeOut('fast', function() {
					$(this).remove()
				});
				$('#submit').removeAttr('disabled');
				if (data.match('success') != null) $('.contactform').slideUp('slow');

			});

		});

		return false;

	});

});