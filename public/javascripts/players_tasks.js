// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults

function get_tasks(elem){
  $.ajax({
    type: 'GET',
    url: '/tasks.js',
    dataType: "html",
    data: "group_id="+$(elem).val(),
    timeout: 4000,
    success: function(data){
      $("#players_task_task_id >* ").remove();
      $("#players_task_task_id").html(data);
    },
    error: function(xhr){}
  });
}
$(function(){
  $("#task_group_id").click(function(){
    get_tasks(this);
  });
  $("#task_group_id").change(function(){
    get_tasks(this);
  });

});

