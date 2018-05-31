// magic.js


    function myFunction() {

        if($('input[id=sdt]').val() != "") {
            // get the form data
            // there are many ways to get this data using jQuery (you can use the class or id also)
            var formData = {
                'sdt'              : $('input[id=sdt]').val(),
                'name'             : $('input[id=name]').val()
            };

            // process the form
            $.ajax({
                type        : 'POST', // define the type of HTTP verb we want to use (POST for our form)
                url         : 'ajax/aj_subscribe.php', // the url where we want to POST
                data        : formData, // our data object
                dataType    : 'json', // what type of data do we expect back from the server
                encode      : true,
                success     :  function(data){
                    $("#modal_subscribe").modal('show');
                },
                error: function (request, status, error) {
                    alert("Có lỗi hệ thống! Vui lòng liên hệ trực tiếp chúng tôi.");
                }
            });
        } else {
            alert('Vui lòng nhập số điện thoại của bạn!');
        }
        
        return false;
    };
    // process the form
    
