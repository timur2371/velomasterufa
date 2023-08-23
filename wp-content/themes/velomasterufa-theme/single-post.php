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


        <div class="article-template">
            <div class="grid">
                <h1 class="article-full-title"><?php the_title(); ?></h1>
                <?php
                $categories = array();
                $categories = get_the_category( $id );
                // var_dump($categories)
                foreach ($categories as $category):
                ?>
                    <!-- Вывод названий категорий -->
                    <span class="article-category"><?= $category->cat_name ?></span>
                <? endforeach; ?>
                <div class="article-full-date">12.07.18</div>
                <?php
                if( has_post_thumbnail() ) { // если картинка записи есть
                    the_post_thumbnail( $size, "class=article-full-img" );  // установить ее
                } else {
                    echo '<img src="'.get_bloginfo("template_url").'/assets/img/fish-2.jpg" class="article-full-img"/>';
                }
                ?>
                <div class="article-full-text">
                    <?php the_content(); ?>
                </div>
            </div>
        </div>
    </div>
  <?php get_footer(); ?>
  <?php wp_footer(); ?>
</div>


</body>
</html>
