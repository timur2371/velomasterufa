<div class="menu">
    <div class="grid">
        <span class="nav-burger" id="nav-burger"></span>
        <div class="flex-logo-contacts">
            <a href="#"><div id="logo"></div></a>
            <div id="short-contacts">
                <!-- 1 - id пользователя wodpress, т.е. админа -->
                <a href="tel:<?= get_the_author_meta('phone', 1) ?>"><?= get_the_author_meta('phone', 1) ?></a><br>
                <a href="index.html#map" class="to-map">
                    <?= get_the_author_meta('adress', 1) ?>
                </a>
            </div>
        </div>
        <ul class="menu-main">
            <li><a href="/#first-of-all" id="about-service">О сервисе</a></li>
            <li><a href="/pricelist">Прайс-лист</a></li>
            <li><a href="/blog">Блог</a></li>
            <li><a href="/#contacts-mainpage" id="contacts-in-menu">Контакты</a></li>
            <li><a href="http://veloprokatufa.ru" target="_blank" style="color: #d63232;">Велопрокат</a></li>
        </ul>


<!--         <?
            wp_nav_menu( array(
                'theme_location'  => '',
                'menu'            => 'menu-main',
                'container'       => 'ul',
                'container_class' => 'menu-{menu-slug}-container',
                'container_id'    => '',
                'menu_class'      => 'menu-main',
                'menu_id'         => '',
                'echo'            => true,
                'fallback_cb'     => 'wp_page_menu',
                'before'          => '',
                'after'           => '',
                'link_before'     => '',
                'link_after'      => '',
                'items_wrap'      => '<ul id = "%1$s" class = "%2$s">%3$s</ul>',
                'depth'           => 0,
                'walker'          => '',
            ) );
        ?> -->
        <div class="clean"></div>
    </div>
</div>
<!-- сброс цикла ? -->
<?php wp_reset_postdata(); ?>
