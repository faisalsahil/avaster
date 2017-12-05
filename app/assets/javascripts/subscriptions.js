(function ($) {
    $(document).ready(function () {

        $('.subscriptions_listing_table').DataTable({
            "pageLength": 10,
            "aaSorting": [[0, "asc"]],
            "scrollX": true
        });

    });
}(jQuery));