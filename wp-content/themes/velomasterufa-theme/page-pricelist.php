<?php
/*
Template Name: Прайс-лист
*/
?>


<!DOCTYPE html>
<html>
<head>
  <title>Веломастер Уфа</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <script src="http://api-maps.yandex.ru/2.1/?lang=ru_RU" type="text/javascript"></script>

  <?php wp_head(); ?>
</head>
<body>
<div id="wrapper">
    <div id="content">

        <!-- Шапка -->
        <div id="header-main">
          <? get_header(); ?>
        </div>


        <div class="pricelist">
            <?php // wp_reset_postdata(); ?> <!-- сброс цикла ? -->
            <? the_content(); ?>
            <!-- <table>
                <tr>
                    <th>№</th>
                    <th>Название</th>
                    <th>Цена, руб</th>
                </tr>
                <tr>
                    <td>1</td>
                    <td>ТО заднего амортизатора (полная разборка с чисткой, смазкой и заменой масла)</td>
                    <td>600-2150</td>
                </tr>
                <tr>
                    <td>2</td>
                    <td>ТО воздушной вилки</td>
                    <td>600-2350 </td>
                </tr>
                <tr>
                    <td>3</td>
                    <td>ТО пружинно-масляной вилки</td>
                    <td>600-850 </td>
                </tr>
                <tr>
                    <td>4</td>
                    <td>ТО пружинно-эластомерной вилки (полная разборка с чисткой и смазкой)</td>
                    <td>600</td>
                </tr>
                <tr>
                    <td>5</td>
                    <td>ТО передней втулки</td>
                    <td>200</td>
                </tr>
                <tr>
                    <td>6</td>
                    <td>ТО задней втулки (без ТО барабана или трещётки)</td>
                    <td>300</td>
                </tr>
                <tr>
                    <td>7</td>
                    <td>ТО задней втулки (с ТО барабана или трещётки)</td>
                    <td>450</td>
                </tr>
                <tr>
                    <td>8</td>
                    <td>ТО каретки (для разборных кареток)</td>
                    <td>250</td>
                </tr>
            </table> -->
        </div>
    </div>

    <?php get_footer(); ?>
    <?php wp_footer(); ?>
</div>


</body>
</html>
