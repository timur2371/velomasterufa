<?php
/*
Template Name: О сервисе
*/

// $email = get_the_author_meta('email', 1);
// include "reservation_handler.php";
?>



<!DOCTYPE html>
<html>
<head>
  <title>Веломастер Уфа</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <script src="http://api-maps.yandex.ru/2.1/?lang=ru_RU" type="text/javascript"></script>
  <script>
      theme_directory = "<?php echo get_template_directory_uri() ?>";
  </script>
  <?php wp_head(); ?>
</head>
<body>
<div id="wrapper">
  <div id="content">

    <!-- Шапка -->
    <div id="header-main">
      <? get_header(); ?>

      <div class="promo-text">
        <div style="margin: 0 auto; max-width: 960px;">



        <div class="slider">
          <div>
            <h1>Комплексное ТО</h1>
            <div class="promo-text-cost">
              2&thinsp;000&thinsp;₽
            </div>
            <div class="promo-text-name">
              <span>Что будет сделано</span>
              Ежегодное полное<br>обслуживание велосипеда&nbsp;—<br>разборка, мойка, смазка, дефектовка
            </div>
          </div>
          <div>
            <h1>Мини ТО</h1>
            <div class="promo-text-cost">
              1&thinsp;000&thinsp;₽
            </div>
            <div class="promo-text-name">
              <span>Что будет сделано</span>
              Минимально необходимая<br>подготовка велосипеда<br>к сезону
            </div>
          </div>
        </div>
        <span id="arrows"></span>
        <div class="promo-text-contorls">
<!--           <img src="<?php echo get_template_directory_uri(); ?>/assets/img/promo-text-controls.svg" id="left" class="slick-arrow" style="">
          <img src="<?php echo get_template_directory_uri(); ?>/assets/img/promo-text-controls.svg" id="right" class="slick-arrow" style=""> -->
        </div>
        </div>
        <div class="clean"></div>
          <!-- <?php include($_SERVER['DOCUMENT_ROOT'].'/inc/slider.html'); ?>                                !!!    -->
      </div>
    </div>
    <!-- EOF Шапка -->




    <!-- В первую очередь -->
    <div id="first-of-all">
      <h1>Чем мы занимаемся —</h1>
      <div>
        <img src="<?php echo get_template_directory_uri(); ?>/assets/img/fish-1.jpg">
        <span>Ремонт</span>
        Полный комплекс услуг&nbsp;по&nbsp;ремонту и&nbsp;обслуживанию велосипеда
      </div>
      <div>
        <img src="<?php echo get_template_directory_uri(); ?>/assets/img/fish-1.jpg">
        <span>Тюнинг</span>
        Замена навесного оборудования на более качественное или подходящее
      </div>
      <div>
        <img src="<?php echo get_template_directory_uri(); ?>/assets/img/fish-1.jpg">
        <span>Покраска</span>
        Пескоструйная обработка, покрытие кислотным грунтом, нанесение краски и лака
      </div>
      <div>
        <img src="<?php echo get_template_directory_uri(); ?>/assets/img/fish-1.jpg">
        <span>Обучение</span>
        Обучающий курс по&nbsp;обслуживанию и&nbsp;ремонта велосипеда в&nbsp;домашних условиях
      </div>
      <div class="clean"></div>
      <a href="#repair-record" class="button">Записаться на ремонт</a>
    </div>
    <!-- EOF В первую очередь -->

    <!-- О сервисе -->
    <div id="about-velomaster">
      <div class="grid">
        <h1>О сервисе —</h1>
        Любой велосипед нуждается в заботе и тщательном обслуживании, а наши мастера знают что именно нужно вашему железному другу, чтобы он служил вам исправно и не подвел ни в какой ситуации. Наш сервис предоставляет полный набор услуг по ремонту велосипедов и мы не боимся сложных задач.
      </div>
    </div>
    <!-- EOF О сервисе -->

    <!-- Цены -->
    <div id="cost">
      <h1>Цены —</h1>
      <div>
        <span>150&thinsp;₽</span>
        <h2>Регулировка переключения</h2>
        Регулировка передач, тормозов, чистка тросиков, сборка на новую смазку рулевой колонки, кареточного узла, колесных втулок
      </div>
      <div>
        <span>150&thinsp;₽</span>
        <h2>Регулировка тормозов</h2>
        Регулировка передач, тормозов, чистка тросиков, сборка на новую смазку рулевой колонки, кареточного узла, колесных втулок
      </div>
      <div>
        <span>50&thinsp;₽</span>
        <h2>Смазка цепи</h2>
        Регулировка передач, тормозов, чистка тросиков, сборка на новую смазку рулевой колонки, кареточного узла, колесных втулок
      </div>
      <div>
        <span>100&thinsp;₽</span>
        <h2>Шиномонтаж</h2>
        Регулировка передач, тормозов, чистка тросиков, сборка на новую смазку рулевой колонки, кареточного узла, колесных втулок
      </div>
      <div class="clean"></div>
      <a href="/pricelist" class="button">Весь прайс-лист</a>
    </div>
    <!-- EOF Цены -->

    <!-- Статьи -->
<!--     <div id="articles-mainpage">
      <h1>Статьи по ремонту —</h1>
      <div class="articles-flex">
        <div>
          <img src="<?php echo get_template_directory_uri(); ?>/assets/img/fish-2.jpg">
          <a href="#">Регулировка тормозов V-brake</a>
        </div>
        <div>
          <img src="<?php echo get_template_directory_uri(); ?>/assets/img/fish-2.jpg">
          <a href="#">Регулировка тормозов V-brake</a>
        </div>
        <div>
          <img src="<?php echo get_template_directory_uri(); ?>/assets/img/fish-2.jpg">
          <a href="#">Регулировка тормозов V-brake</a>
        </div>
        <div>
          <img src="<?php echo get_template_directory_uri(); ?>/assets/img/fish-2.jpg">
          <a href="#">Регулировка тормозов V-brake</a>
        </div>
      </div>
      <a href="blog.html" class="button">Больше статей на блоге</a>
      <div class="clean"></div>
    </div> -->
    <!-- EOF Статьи -->

    <!-- Запись на ремонт -->
    <div id="repair-record">
      <div class="grid-two">
        <h1>Запись на ремонт —</h1>
        <!-- Виджет yclients, ширина меняется в зависимости от ширины экрана -->
        <iframe height="750px" scrolling="no" frameborder="0" allowtransparency="true" id="ms_booking_iframe" src="https://n132648.yclients.com/"></iframe>
        <!-- <?php echo get_template_directory_uri(); ?>/reservation_handler.php -->
        <?php /*
          <form action="" method="post" id="reservation">
            <div class="form-record-item">
              <label>Ваше имя:</label>
              <input type="text" name="client_name" placeholder="Иван">
            </div>
            <div class="form-record-item">
              <label>Тип ремонта:</label>
              <!-- Выбор типа ремонта -->
              <select size="1" name="client_repairtype">
                <option>Другое</option>
                <option selected="selected">Комплексное ТО</option>
                <option>Мини ТО</option>
                <option>Чистка</option>
              </select>
            </div>
            <div class="form-record-item">
              <label>Желаемая дата:</label>
              <input type="date" name="client_date" placeholder="дд:мм:гггг">
            </div>

            <!-- <?php echo date("Y-m-d");?>                                          !!!       -->
            <div class="form-record-item">
              <label>Телефон:</label>
              <input type="text" name="client_phone" placeholder="8&nbsp;917&nbsp;7777777">
            </div>

            <button type="submit" id="reservation_btn">Записаться</button>
          </form>
          */
        ?>
        <div id="result_form"><div>
      </div>
    </div>
    <!-- EOF Запись на ремонт -->
    <p><?= $email ?></p>
    <!-- Контакты -->
    <div id="contacts-mainpage">
      <h1>Контакты —</h1>
      <div>
        <h2>Адрес —</h2>
        <?= get_the_author_meta('adress', 1) ?>
      </div>
      <div>
        <h2>Режим работы —</h2>
        По записи
      </div>
      <div>
        <h2>Телефон —</h2>
        <a href="tel:<?= get_the_author_meta('phone', 1) ?>"><?= get_the_author_meta('phone', 1) ?></a>
      </div>
      <div>
        <h2>Вконтакте —</h2>
        <a href="https://vk.com/rakhimov_i" target="blank">vk.com/rakhimov_i</a>
      </div>
      <div class="clean"></div>
    </div>
    <!-- EOF Контакты -->

    <!-- Карта -->
    <script type="text/javascript">
      ymaps.ready(init);
      var myMap,
      myPlacemark;
      function init(){
        myMap = new ymaps.Map("map", {
          center: [54.71115609397562,55.991701160049445],
          zoom: 16,
          controls: ['zoomControl']
        });
        myPlacemark = new ymaps.Placemark([54.71115609397562,55.991701160049445], {
          hintContent: 'Веломастер',
          balloonContent: 'г. Уфа, ул. Менделеева, 114/2'
        });
        myMap.geoObjects.add(myPlacemark);
        myMap.behaviors
        .disable(['scrollZoom']);
        }
    </script>

    <div id="map-wrapper">
      <div id="map"></div>
    </div>
    <!-- EOF Карта -->
  </div>

  <?php get_footer(); ?>
  <?php wp_footer(); ?>
</div>


</body>
</html>
