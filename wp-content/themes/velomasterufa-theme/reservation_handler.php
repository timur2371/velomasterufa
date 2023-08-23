<?
// require __DIR__ . '/wp-load.php';
require($_SERVER['DOCUMENT_ROOT'].'/wp-load.php');

$client_name = $_POST['client_name'];
$client_phone = $_POST['client_phone'];
$client_date =  $_POST['client_date'];
$client_repairtype = $_POST['client_repairtype'];


// получатель, т.е. ваш емэйл
$to = get_the_author_meta('email', 1);


// тема письма
$subject = 'Запись на ремонт "Веломастер"';


$client_date = date("d.m.y", strtotime($client_date));


// текст письма меняется он!!
// PHP_EOL - переход на новую строку
$message = 'Имя: ' . $client_name . PHP_EOL .
           'Тип ремонта: ' . $client_repairtype . PHP_EOL .
           'Номер: ' . $client_phone . PHP_EOL .
           'Дата: ' . $client_date . PHP_EOL;

// Отправляем
mail($to, $subject, $message);

?>
