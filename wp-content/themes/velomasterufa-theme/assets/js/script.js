function iframe_width() {
    if ($(window).width() > 960) {
        $("#ms_booking_iframe").attr("width","780");;
    } else {
        $("#ms_booking_iframe").attr("width","320");;
    }
}
// $("#ms_booking_iframe").width($(window).width());
iframe_width();
$(window).resize(function() {
    iframe_width();
});


/* Плавная анимация при переходе по пунктам меню*/
$("body").on('click', '[href*="#"]', function(e){
  var fixed_offset = 100;
  $('html,body').stop().animate({ scrollTop: $(this.hash).offset().top - fixed_offset }, 1000);
  e.preventDefault();
});



/* Слайдер на главной */
$(document).ready(function(){
  $('.slider').slick({
    infinite: true,
    speed: 500,
    fade: true,
    cssEase: 'linear',
    autoplay: true,
    appendArrows: $('.promo-text-contorls'),
    // Полный путь к стрелкам
    prevArrow: '<img src="/wp-content/themes/velomasterufa-theme/assets/img/promo-text-controls.svg" id="left">',
    nextArrow: '<img src="/wp-content/themes/velomasterufa-theme/assets/img/promo-text-controls.svg" id="right">',
  });
});



/* Активный (выделяется) элемент меню в хедере*/
$(function () {

    /* Код, если меню генерит wordpress */
    // $('.menu-main li').each(function () {
    //     if ($(this).hasClass('active')) {
    //         $(this).children().addClass('active');
    //     }
    // });
    // $('.menu-main a').each(function () { // Перебор элементов меню
    //     // $(this).parent() = $('.menu-main li')
    //     if (!($(this).parent().hasClass("contacts-in-menu"))) { // Элемент "контакты" - блок страницы "о сервисе", поэтому она не должна быть активной
    //         var location = window.location.href; // Адрес страницы (в адресной строке)
    //         var link = this.href; // Адрес кнопки в меню
    //         if(location == link) { // Если они совпадают
    //             $('.menu-main a').removeClass('active'); // убирается active из всех пунктов меню
    //             $(this).addClass('active'); // Добавляется active нужному элементу
    //         }
    //     }
    // });

    $("#about-service").addClass('active'); // По умолчанию элемент "о сервисе активен"
    var location = window.location.href; // Адрес страницы (в адресной строке) http://velomasterufa/pricelist/ (например)
    var cur_url_arr = location.split('/'); // Массив с текстом после /: 0-http:,1-,2-velomasterufa,3-pricelist,4- (например)
    var cur_url = '/' + cur_url_arr[3]; // берем текст с индексом 3 и добавляем /. получается /pricelist
    $('.menu-main li').each(function () { // Перебор элементов меню
        var link = $(this).find('a').attr('href');; // Адрес кнопки в меню
        if(cur_url == link) { // Если ссылки совпадают
            $('.menu-main a').removeClass('active');
            if ($(this).find('a').is("#contacts-in-menu")) { // Элемент "контакты" - блок страницы "о сервисе", поэтому она не должна быть активной
                $('#about-service').addClass('active')
            } else {
                $(this).find('a').addClass('active'); // Добавляется active нужному элементу
            }
        }
    });
});
