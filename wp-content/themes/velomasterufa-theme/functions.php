<?php

// правильный способ подключить стили и скрипты
add_action( 'wp_enqueue_scripts', 'velomasterufa_styles' ); // файлы стилей
add_action( 'wp_footer', 'velomasterufa_styles_footer' ); // файлы стилей в футере
add_action( 'wp_enqueue_scripts', 'jquery_lib' ); // скрипты js
// add_action('wp_print_styles', 'theme_name_scripts'); // можно использовать этот хук он более поздний


function jquery_lib() {
    wp_deregister_script( 'jquery' ); // отключаем прежний jquery

    // Название скрипта, путь к нему, зависимости от других скриптов, версия, в футере?
    wp_enqueue_script( 'jquery', get_template_directory_uri() . '/assets/js/jquery.min.js', $ver = false, $in_footer = true);
    wp_enqueue_script( 'script', $src = get_template_directory_uri() . '/assets/js/script.js', $deps = array('jquery'), $ver = false, $in_footer = true );
    wp_enqueue_script( 'ajax', $src = get_template_directory_uri() . '/assets/js/ajax.js', $deps = array('jquery'), $ver = false, $in_footer = true );
    wp_enqueue_script( 'nav-burger', $src = get_template_directory_uri() . '/assets/js/nav-burger.js', $deps = array('jquery'), $ver = false, $in_footer = true );
    wp_enqueue_script( 'slick', $src = get_template_directory_uri() . '/assets/js/slick.min.js', $deps = array('jquery'), $ver = false, $in_footer = true );
}


function velomasterufa_styles() {
    // wp_enqueue_style( 'main', get_stylesheet_uri() );
    wp_enqueue_style( 'normalize', get_template_directory_uri() . '/assets/css/normalize.css');
    wp_enqueue_style( 'main', get_template_directory_uri() . '/assets/css/main.css');
    wp_enqueue_style( 'pricelist', get_template_directory_uri() . '/assets/css/pricelist.css');
    wp_enqueue_style( 'blog', get_template_directory_uri() . '/assets/css/blog.css');
    // wp_enqueue_script( 'script-name', get_template_directory_uri() . '/js/example.js', array(), '1.0.0', true );
}

function velomasterufa_styles_footer() {
    wp_enqueue_style( 'slick', get_template_directory_uri() . '/assets/css/slick.css');
    // wp_enqueue_script( 'script-name', get_template_directory_uri() . '/js/example.js', array(), '1.0.0', true );
}



// add_image_size( '', $width = 0, $height = 0, $crop = false )


//======= Новые поля в разделе Контакты =============
function modify_contact_methods( $contact_fields ) {

    // Новые поля
    $contact_fields['phone'] = 'Телефон';
    $contact_fields['adress'] = 'Адрес';

    return $contact_fields;
}
add_filter('user_contactmethods', 'modify_contact_methods');



add_theme_support('post-thumbnails', array('post')); // подключение миниатюр (главных картинок) только для записей
