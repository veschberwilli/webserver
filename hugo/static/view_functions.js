//
// FUNCTIONS FOR THE TABLES ON THE VIEWS
// Functions
//  - Row clickable as link
//  - Hover effect when entering a table row with a pointer
//
jQuery(document).ready(function($) {
    // CLICKABLE ROW
    $(".clickable-row").click(function() {
        window.location = $(this).data("href");
    });

    // HOVER
    $(".clickable-row").hover(function() {
        $(this).addClass('hover');
        $('[data-toggle="tooltip"]').tooltip();
        $(this).css("background", "#B3AEAE");
    }, function() {
        $(this).removeClass('hover');
        $(this).css("background", "");
    })
});
