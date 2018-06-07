// Placeholder manifest file.
// the installer will append this file to the app vendored assets here: vendor/assets/javascripts/spree/frontend/all.js'

function submitNewsletter(e, selector) {
   e.preventDefault();

   if ($(selector).validationEngine('validate')) {
     $.ajax({
       type: "POST",
       dataType: 'JSON',
       url: $(selector).attr("action"),
       data: $(selector).serialize(),
       success: function(data) {
         if (data.status === "ok") {
           $.gritter.add({
             title: '¡ Éxito !',
             text: data.msj,
             fade_out_speed: 5000,
             image: '/images/confirm.png',
             class_name: 'gritter-green'
           });

			$(selector+" input[type='text']").val('');
         }
         else if (data.status === "fail") {
           $.gritter.add({
             title: '¡ Error !',
             text: data.msj,
             fade_out_speed: 5000,
             image: '/images/close.png'
           });
         }
       },
       error: function(data) {
         $.gritter.add({
           title: '¡ Error !',
           text: 'Ha ocurrido un error en la operación. Inténtelo nuevamente.',
           fade_out_speed: 5000,
           image: '/images/close.png'
         });
       }
     })
   }
}

