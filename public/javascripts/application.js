$(function(){
  $("#links a").button();
});

function show_snort_log(){
  $.ajax({
    url: "/snort",
    type: "GET",
    success: function(data){
      $("#snort_log").html(data);
      var table=$("#snort_log table")[8];
      $("#snort_log").html(table);
      $("#snort_log table table tr").first('a').hide();
      $("#snort_log a:not([href*=http])").each(function(){
        $(this).attr('href',"http://10.13.109.202/base/"+$(this).attr('href'));
      });
      $("#snort_log").dialog({
        width:800
      });

    }
  })
}
