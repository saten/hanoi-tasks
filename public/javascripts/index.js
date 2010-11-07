var player;
var old_task;
var new_task;
var completed_task;
$(function(){
	$("#status").addClass("ui-corner-all");
  $("#completed_tasks").addClass("ui-corner-all");
	$(".player_name").button();
	//$(".player_name").effect("pulsate",250);
	$(".task").addClass("ui-corner-all");
	$(".task_group").addClass("ui-corner-all");
	$("#availables").addClass("ui-corner-all");
	$( ".task_players" ).disableSelection();
	$( "#progressbar" ).progressbar();
	$(".task_players").sortable({
			connectWith: ".task_players",
			disableSelection: true,
			start: function(event, ui) {
        player=ui.item.attr('id');
        old_task=ui.item.parent('div.task_players').attr('alt');
       },
			stop: function(event, ui) {
			  new_task=ui.item.parent('div.task_players').attr('alt');
			  $("#players_task_player_id").val(player);
		    $("#players_task_task_id").val(new_task);
        $("#old_task_id").val(old_task);
          //create player_task
  		    $.ajax({
  		      type:"POST",
  		      data:$("#new_players_task").serialize(),
  		      url:"/players_tasks.xml",
  		      timeout:4000,
  		      success: function(data){
  		       $("#"+$("#players_task_player_id").val()).effect("pulsate",200);
  		      },
  		      error: function(xhr){
  		       $dom_item.effect("puff",300);
  		        
            }
  		    });
			 },
			placeholder:"ui-placeholder",
			forcePlaceholderSize:true,
			opacity:0.2
		});
  $(".tasks").sortable({
    connectWith: ".tasks",
    placeholder:"ui-placeholder",
    forcePlaceholderSize:true,
    opacity:0.2,
    stop: function(event,ui){
      if (ui.item.offsetParent("#completed_tasks").attr('id')=='completed_tasks'){
    		completed_task=ui.item.attr("alt");
    		$.ajax({
    			type:"PUT",
    			timeout:4000,
    			url:"/tasks/"+completed_task+".xml",
    			data:"task[completed]=true"
    		});
      }
      ui.item.effect("fade",300);
      document.location=document.location;
    }
  });
  $.ajax({
    url: "/progress",
    success: function(data){
      $("#progressbar").progressbar("value",parseInt(data));
    }
  });
});
