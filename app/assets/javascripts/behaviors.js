$(function() {
    $('#numguests').on('change', function() {
        if ($('#numguests').val() > 0)
            $('#guestnames').show();  
        else 
            $('#guestnames').hide();
    })
});
