<div id="footer">
    <div id="copyright">
        <a href="#">velomasterufa.ru</a><br>
        г. Уфа, 2018 г.
    </div>
    <div class="footer-menu">
        <a href="/">О сервисе</a>
        <a href="/pricelist">Прайс-лист</a>
    </div>
    <div class="footer-menu">
        <a href="/blog">Блог</a>
        <a href="/#contacts-mainpage">Контакты</a>
    </div>
    <div id="footer-contacts">
        <?= get_the_author_meta('adress', 1) ?><br>
        <a href="tel:<?= get_the_author_meta('phone', 1) ?>"><?= get_the_author_meta('phone', 1) ?></a><br>
        <a href="https://vk.com/rakhimov_i">vk.com/rakhimov_i</a>
    </div>
    <div id="made-by">
        Разработка сайта:<br>
        <a href="https://vk.com/timur_gh" target="blank">Тимур Каррамов</a> <br>
        <a href="//marat-bakirov.ru" target="blank">Марат Бакиров</a>
    </div>
    <div class="clean"></div>
</div>
