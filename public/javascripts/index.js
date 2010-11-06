var player;
var old_task;
var new_task;
$(function(){
	$("#status").addClass("ui-corner-all");
	$(".player_name").effect("pulsate",250);
	$(".task").addClass("ui-corner-all");
	$(".task_group").addClass("ui-corner-all");
	$("#availables").addClass("ui-corner-all");
	$( ".task_players" ).disableSelection();
	$(".task_players").sortable({
			connectWith: ".task_players",
			start: function(event, ui) {
        player=ui.item.attr('id');
        old_task=ui.item.parent('div.task_players').attr('alt');
       },
			stop: function(event, ui) {
			  new_task=ui.item.parent('div.task_players').attr('alt');
			  $("#players_task_player_id").val(player);
		    $("#players_task_task_id").val(new_task);
        $("#old_task_id").val(old_task);
        dom_item=event.item;
          //create player_task
  		    $.ajax({
  		      type:"POST",
  		      data:$("#new_players_task").serialize(),
  		      url:"/players_tasks.xml",
  		      timeout:4000,
  		      success: function(data){
  		        
  		       $("#"+$("#players_task_player_id").val()).effect("pulsate",400);
  		      },
  		      error: function(xhr){
  		       $dom_item.effect("puff",300);
  		        
            }
  		    });
			 },
			placeholder:"ui-state-highlight",
			forcePlaceholderSize:true,
			opacity:0.7
		});

});
