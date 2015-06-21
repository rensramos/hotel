
$(document).ready(function(){
    $('#checkIn').datepicker({
        formatDate: 'mm/dd/yyyy',
        minDate: new Date(),
        onSelect: function(){
            $('#checkOut').attr('disabled', false);
            $('#checkOut').datepicker("option", "minDate", $(this).datepicker("getDate"));
        }
    });

    $('#checkOut').datepicker({
        formatDate: 'mm/dd/yyyy'
    });
});

