// # Place all the behaviors and hooks related to the matching controller here.
// # All this logic will automatically be available in application.js.
// # You can use CoffeeScript in this file: http://coffeescript.org/


//--- Input Mask
//= require jquery.inputmask/dist/jquery.inputmask.bundle
//--- DatetimePicker
//= require eonasdan-bootstrap-datetimepicker/build/js/bootstrap-datetimepicker.min


(function(window, document, $, undefined){

  $(function(){

    // MASKED
    // -----------------------------------
    if($.fn.inputmask)
      $('[data-masked]').inputmask();

    // DATETIMEPICKER
    // -----------------------------------

    if($.fn.datetimepicker) {

      $('#datetimepicker').datetimepicker({
        format: 'DD/MM/YYYY',
        icons: {
            date: 'fa fa-calendar',
            previous: 'fa fa-chevron-left',
            next: 'fa fa-chevron-right',
          }
      });
    }
  });

})(window, document, window.jQuery);
