(function ($) {

    $(document).ready(function () {

        $("#package_country_id").change(function () {
            var country_id = $("#package_country_id").val();
            // alert(country_id);
            $("#package_currency_id").val('');
            $("#package_currency_id").children('option').hide();
            $("#package_currency_id option[parent_id=" + country_id + "]").show();
        });
    });

}(jQuery));