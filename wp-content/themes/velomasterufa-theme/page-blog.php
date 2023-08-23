<?php
/*
Template Name: Блог
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


    <?php
    // параметры по умолчанию
    $args = array(
        'numberposts' => 5,
        'category'    => 0,
        'orderby'     => 'date',
        'order'       => 'DESC',
        'include'     => array(),
        'exclude'     => array(),
        'meta_key'    => '',
        'meta_value'  =>'',
        'post_type'   => 'post',
        'suppress_filters' => true, // подавление работы фильтров изменения SQL запроса
    );

    $posts = get_posts( $args );
    ?>

    <div class="blog">
    <div class="grid">

    <?
    foreach($posts as $post){ setup_postdata($post);
        // формат вывода
    ?>


        <div class="article">
            <!-- article_template.html -->
            <span class="article-img-container">


            <a href="<?php the_permalink(); ?>">
                <?php
                if( has_post_thumbnail() ) { // если картинка записи есть
                    the_post_thumbnail( $size, "class=article-img" );  // установить ее
                } else {
                    echo '<img src="'.get_bloginfo("template_url").'/assets/img/fish-2.jpg" class="article-img"/>';
                }
                ?>
            </a>
            </span>
            <div class="article-brief">
                <div class="article-text-container">
                    <a href="<?php the_permalink(); ?>" class="article-title"><?php the_title(); ?></a>
                    <?php
                    $categories = array();
                    $categories = get_the_category( $id );
                    // var_dump($categories)
                    foreach ($categories as $category):
                    ?>
                        <span class="article-category"><?= $category->cat_name ?></span>
                    <? endforeach; ?>
                    <p class="article-description"><?php the_excerpt(); ?></p>
                </div>
                <div style="flex: 1;"></div> <!-- отступ -->
                <div class="article-date"><?php the_date(); ?></div>
            </div>
        </div>
<!--             <div class="article">
            <a href="article_template.html"><img src="<?php //echo get_template_directory_uri(); ?>/assets/img/fish-2.jpg" alt="" class="article-img"></a>
            <div class="article-brief">
                <a href="article_template.html" class="article-title">Статья 2</a>
                <p class="article-description">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages...</p>
                <div class="article-date">18.07.18</div>
            </div>
        </div>
 -->


    <? } ?>
    </div>
    </div>

    <?
    wp_reset_postdata(); // сброс
    ?>


    <?php get_footer(); ?>
    <?php wp_footer(); ?>
</div>


</body>
</html>
