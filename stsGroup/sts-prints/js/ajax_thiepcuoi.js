    
    var dataList = null;

    function formSearch() {

        // get the form data
        // there are many ways to get this data using jQuery (you can use the class or id also)
        var formData = {
            'type_name'              : $('select[id=type_name]').val(),
            'color_name'             : $('select[id=color_name]').val()
        };
        // process the form
        $.ajax({
            type        : 'POST', // define the type of HTTP verb we want to use (POST for our form)
            url         : 'ajax/aj_thiepcuoi.php', // the url where we want to POST
            data        : formData, // our data object
            dataType    : 'json', // what type of data do we expect back from the server
            encode      : true,
            success     :  function(data){
                $("#dataList").empty();
                dataList = data;
                displayData();
            },
            error: function (request, status, error) {
            }
        });
        
        return false;
    };
    // process the form
    window.onload = formSearch;
    var dataTmp = null;
    function displayData() {
        dataTmp = dataList.slice(0, 24);
        dataList = dataList.slice(24, );

        dataTmp.forEach(function(e) {

            var title = "Mã thiệp: "+e.key_code+" - "+e.price+" vnđ";
            var link = e.image_name;
            var str = "<div class='col-md-4'>"+
                        "<div class='gtco-card-item image-popup' title='"+title+"' >"+
                        "    <figure onclick='showImage(this)' title='"+title+"'>"+
                        "        <div class='overlay'><i class='ti-plus'></i></div>"+
                        "        <img src='"+link+"' alt='Image' class='img-responsive'>"+
                        "    </figure>"+
                        "    <div class='gtco-text text-left'>"+
                        "        <h2>"+title+"</h2>"+
                        "    </div>"+
                        "</div>"+
                    "</div>";
            $("#dataList").append(str);
        });

    };

    window.onscroll = function(ev) {
        if ((window.innerHeight + window.scrollY) >= document.body.offsetHeight - 300) {
            if(dataList != null) {
                displayData();
            }
        }
    };

    // Get the modal
    var modal = document.getElementById('modalShow');
    var modalImg = document.getElementById('modalImg');
    var captionText = document.getElementById('modalCaption');
    function showImage(e){
        var title = e.title;
        var link = $(e).children('img')[0].src;

        modal.style.display = "block";
        modalImg.src = link;
        captionText.innerHTML = title;
    };

    // Get the <span> element that closes the modal
    var span = document.getElementsByClassName("close")[0];

    // When the user clicks on <span> (x), close the modal
    span.onclick = function() { 
        modal.style.display = "none";
    };

    // When the user clicks on <span> (x), close the modal
    modal.onclick = function() { 
        modal.style.display = "none";
    };

    