$(document).ready(function(){
		$('#user').validate({
	    rules: {
	      name: {
	        minlength: 2,
	        required: true
	      },
	      email: {
	        required: true,
	        email: true
	      },
	      password:{
              required:true,
              minlength:6,
              maxlength:12
          },
          rpassword:{
              required:true,
              equalTo:"#password"


          },
            sex:{},
	      message: {
	        minlength: 2,
	        required: true
	      }
	    },
            messages:{
              rpassword:{equalTo:'please input the same pwd'}
            },

			highlight: function(element) {
				$(element).closest('.control-group').removeClass('success').addClass('error');
			},
			success: function(element) {
				element
				.text('OK!').addClass('valid')
				.closest('.control-group').removeClass('error').addClass('success');
			}

	  });

}); // end document.ready
