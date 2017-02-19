// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .

var ADDRESS_VALIDATION_RULES = {
  'address[label]': {
    required: true,
    maxlength: 10
  },
  'address[address_1]': {
    required: true,
    maxlength: 100
  },
  'address[address_2]': {
    maxlength: 100
  },
  'address[city]': {
    required: true,
    maxlength: 35
  },
  'address[state]': {
    required: true
  },
  'address[zip]': {
    required: true,
    maxlength: 10
  },
  'address[country]': {
    required: true
  }
};

var CUSTOMER_VALIDATION_RULES = {
  'customer[first_name]': {
    required: true,
    maxlength: 35
  },
  'customer[middle_name]': {
    maxlength: 35
  },
  'customer[last_name]': {
    required: true,
    maxlength: 35
  },
  'customer[email]': {
    email: true
  },
  'customer[cell_phone]': {
    maxlength: 20
  },
  'customer[work_phone]': {
    maxlength: 20
  },
  'customer[home_phone]': {
    maxlength: 20
  },
  'customer[fax]': {
    maxlength: 20
  }
};

var VALIDATION_RULES = Object.assign(
          ADDRESS_VALIDATION_RULES,
          CUSTOMER_VALIDATION_RULES);


$(document).on('turbolinks:load', function() {

  $('form').first().validate({
    rules: VALIDATION_RULES,
    errorElement: 'em',
    errorPlacement: function ( error, element ) {
      error.addClass('help-block');

      if ( element.prop('type') === 'checkbox' ) {
        error.insertAfter( element.parent('label') );
      } else {
        error.insertAfter( element );
      }
    },
    highlight: function ( element, errorClass, validClass ) {
      $( element ).parents( '.form-group' ).addClass( 'has-error' );
    },
    unhighlight: function (element, errorClass, validClass) {
      $( element ).parents( '.form-group' ).removeClass( 'has-error' );
    }
  });

});
