$( document ).ready(function() {
    $("#reservation_btn").click(
    function(){
      sendAjaxForm('result_form', 'reservation', theme_directory + '/reservation_handler.php');
      return false;
    }
  );
});

function sendAjaxForm(result_form, ajax_form, url) {
    $.ajax({
        url:     url, //url страницы (action_ajax_form.php)
        type:     "POST", //метод отправки
        dataType: "html", //формат данных
        data: $("#"+ajax_form).serialize(),  // Сеарилизуем объект
        success: function(response) { //Данные отправлены успешно
          alert("Отправлено");
          result = $.parseJSON(response);
          $('#result_form').html();
        },
        error: function(response) { // Данные не отправлены
            alert("Что-то пошло не так");
            $('#result_form').html('Ошибка. Данные не отправлены.');
        }
    });
}
