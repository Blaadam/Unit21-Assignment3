$(function () {
    var page = sessionStorage.getItem('page');
    var navbar = document.getElementsByClassName('navbar-nav me-auto')[0];
    if (page == null) {
        $(navbar[0]).addClass('nav-link active link-light');
    }
    else {
        navbar.forEach((item, index) => {
            if (item.children[0].href == page) {
                $(item).addClass('nav-link active link-light').siblings().removeClass('nav-link active link-light');
            }
        });
    }
 })

$(document).on('click', 'ul li', function () {
    var x = this.children[0].href;
    sessionStorage.setItem('page', x);
});