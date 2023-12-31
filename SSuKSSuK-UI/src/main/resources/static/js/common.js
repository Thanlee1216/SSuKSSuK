let commAjax = {
    request: function (URL, method, inObj, callback, errorCallback) {

        var jsonData = JSON.stringify(inObj);
        $.ajax({
            url: URL,
            method: method,
            cache: false,
            dataType: 'json',
            data: jsonData,
            contentType: "application/json; charset=UTF-8",
            jsonp: 'callback',
            beforeSend: function (xmlHttpRequest) {
            },
            success: function (response, statusText, data) {
                callback(data.responseJSON);
            },
            error: function (request, status, error, data) {
                alert("API 서버가 응답하지 않습니다.");
                console.log("request API 서버가 응답하지 않습니다.");
                errorCallback(data.responseJSON);
            },
            complete: function (data) {
            }
        });
    }
}

function goMenu(menu) {
    location.href = menu;
}