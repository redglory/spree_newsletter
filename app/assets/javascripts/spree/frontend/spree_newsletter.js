// Placeholder manifest file.
// the installer will append this file to the app vendored assets here: vendor/assets/javascripts/spree/frontend/all.js'

function submitNewsletter(selector) {
    $.ajax({
        type: "POST",
        dataType: 'JSON',
        url: $(selector).attr("action"),
        data: $(selector).serialize(),
        success: function(data) {
            if (data.status === "ok") {
                alert(data.msj);
            }
        },
        error: function(data) {
            alert(data);
        }
    });

    return false;
}
