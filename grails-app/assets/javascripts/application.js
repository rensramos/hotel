var datePickerOpt = {
    minDate: new Date()
};

$(function() {
    $("#checkIn").datepicker(datePickerOpt);
    $("#checkOut").datepicker(datePickerOpt);
});