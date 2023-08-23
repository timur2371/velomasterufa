<?php
/**
 * Основные параметры WordPress.
 *
 * Скрипт для создания wp-config.php использует этот файл в процессе
 * установки. Необязательно использовать веб-интерфейс, можно
 * скопировать файл в "wp-config.php" и заполнить значения вручную.
 *
 * Этот файл содержит следующие параметры:
 *
 * * Настройки MySQL
 * * Секретные ключи
 * * Префикс таблиц базы данных
 * * ABSPATH
 *
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** Параметры MySQL: Эту информацию можно получить у вашего хостинг-провайдера ** //
/** Имя базы данных для WordPress */
define('DB_NAME', 'velomasterufa');

/** Имя пользователя MySQL */
define('DB_USER', 'root');

/** Пароль к базе данных MySQL */
define('DB_PASSWORD', '');

/** Имя сервера MySQL */
define('DB_HOST', 'localhost');

/** Кодировка базы данных для создания таблиц. */
define('DB_CHARSET', 'utf8mb4');

/** Схема сопоставления. Не меняйте, если не уверены. */
define('DB_COLLATE', '');

/**#@+
 * Уникальные ключи и соли для аутентификации.
 *
 * Смените значение каждой константы на уникальную фразу.
 * Можно сгенерировать их с помощью {@link https://api.wordpress.org/secret-key/1.1/salt/ сервиса ключей на WordPress.org}
 * Можно изменить их, чтобы сделать существующие файлы cookies недействительными. Пользователям потребуется авторизоваться снова.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         '89=_B7 ~C)8IY}ccn|~F5iFc0KwgPV2i3fK`QQpe?Hm<vs8A73E=MWbUM>&FvW#=');
define('SECURE_AUTH_KEY',  'ngzE6fj4nwpvi>RFWLR&{CJVXdT?jUkMxI+.W9?6wPdyli!:t!n`z5jwg3CvdTqY');
define('LOGGED_IN_KEY',    'sW^b)JLy!eln[B$4EoL|[-NETfpe]D7g^~F5<xC}a2w=1v7PwOo28(hbU;8F+^aI');
define('NONCE_KEY',        'm/@8BL|oZxkyvmtHx<-X70X95ut1o@,z3G6@eT6,_g%4b< keN,]F/eSOrk7up`.');
define('AUTH_SALT',        'lJA^*6`Y{uW;LEU!Jm SkP TF85WV<Bs<>YxHP]V>@XLNWtmA!!ye-t6^EqNd@wW');
define('SECURE_AUTH_SALT', '_$:;:lps5kpP{C*_<LtRPC3|/#Ej,]Tf7<~?5h|v}V64b}CBT~TQ7}M^y*y*_7`6');
define('LOGGED_IN_SALT',   '% iQD^D&.hJYRgNnl1Ei2{zhuSZW/8z{/{/6JtLF%Jl+oc-X0ahU/G~zC^.;~_[]');
define('NONCE_SALT',       '*pA@wDyz _[sjWhBiw}j$c/6l<bm{u3:Fku]rY6TJR$aAIjk_8thP7q(S.SXto^V');

/**#@-*/

/**
 * Префикс таблиц в базе данных WordPress.
 *
 * Можно установить несколько сайтов в одну базу данных, если использовать
 * разные префиксы. Пожалуйста, указывайте только цифры, буквы и знак подчеркивания.
 */
$table_prefix  = 'wp_';

/**
 * Для разработчиков: Режим отладки WordPress.
 *
 * Измените это значение на true, чтобы включить отображение уведомлений при разработке.
 * Разработчикам плагинов и тем настоятельно рекомендуется использовать WP_DEBUG
 * в своём рабочем окружении.
 *
 * Информацию о других отладочных константах можно найти в Кодексе.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define('WP_DEBUG', false);

/* Это всё, дальше не редактируем. Успехов! */

/** Абсолютный путь к директории WordPress. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Инициализирует переменные WordPress и подключает файлы. */
require_once(ABSPATH . 'wp-settings.php');
