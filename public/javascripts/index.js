$(function(){
	$("#status").addClass("ui-corner-all");
	$(".player_name").effect("pulsate",250);
	$(".task").addClass("ui-corner-all");
	$(".task_group").addClass("ui-corner-all");
	$("#availables").addClass("ui-corner-all");
	$( ".task_players" ).disableSelection();
	$( ".task_players" ).sortable({
			connectWith: ".task_players",
			stop: function(event, ui) { alert(ui.sender) },
			placeholder:"ui-state-highlight",
			forcePlaceholderSize:true,
			opacity:0.7
		});

});
