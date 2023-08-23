$("#nav-burger").click(function() {
  // $("#nav").slideToggle();
  // if ($(".nav-burger").css('background', 'url(../img/menu/iconu.svg) no-repeat')) {
  //   $(this).css('background', 'url(../img/menu/icon-cross.svg) no-repeat');
  // } else {
  //   $(this).css('background', 'url(../img/menu/icon-menu.svg) no-repeat');
  // }

  if($('.menu-main').is(':visible')) {
    $(this).css('background', 'url(/wp-content/themes/velomasterufa-theme/assets/img/menu/icon-menu.svg) no-repeat') // Бургер
    $('.menu-main').removeClass('showitems');
  } else {
    $(this).css('background', 'url(/wp-content/themes/velomasterufa-theme/assets/img/menu/icon-cross.svg) no-repeat') // Крестик
    $('.menu-main').addClass('showitems');
  }
});


