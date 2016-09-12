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

      $('#datetimepicker1').datetimepicker({
        icons: {
            time: 'fa fa-clock-o',
            date: 'fa fa-calendar',
            up: 'fa fa-chevron-up',
            down: 'fa fa-chevron-down',
            previous: 'fa fa-chevron-left',
            next: 'fa fa-chevron-right',
            today: 'fa fa-crosshairs',
            clear: 'fa fa-trash'
          }
      });
      // only time
      $('#datetimepicker2').datetimepicker({
          format: 'LT'
      });
      // View mode
      $('#datetimepicker3').datetimepicker({
          viewMode: 'years',
         format: 'MM/YYYY'
      });

    }

  });

})(window, document, window.jQuery);
