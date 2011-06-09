// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults
$(function() {
  $commentForm = $("#comment-form");
  $commentForm.hide();
  $("#add-comment").click(function(){
    $commentForm.fadeIn();
   // $(this).html("Hide form");
  });
  
  $("#welcome").hide();
  $("#quote").hide();
  $("#index-page").hide();
  
  $("#welcome").fadeIn(1000);
  $("#quote").fadeIn(1000);
  $("#index-page").fadeIn(1000);
  
  $("#nav ul li:eq(1)").hover(
  function()
  {
    $(this).find(".sub-nav").fadeIn();
    $(this).find("a:eq(0)").css("border", "none");
  },
  function()
  {
    $(this).find(".sub-nav").fadeOut();
    $(this).find("a:eq(0)").css("border-bottom", "1px solid #A87C4F");
  });
  
  $("#nav ul li:eq(5)").hover(
  function()
  {
    $(this).find(".sub-nav").fadeIn();
    $(this).find("a:eq(0)").css("border", "none");
  },
  function()
  {
    $(this).find(".sub-nav").fadeOut();
    $(this).find("a:eq(0)").css("border-bottom", "1px solid #A87C4F");
  });
  
  
  $commentFormBody = $("#comment-form-body");
  if($commentFormBody.val() == "")
    $commentFormBody.val("Write your comment here...");
  
  
  $commentFormBody.focus(function()
  {
    if($(this).val() == "Write your comment here...")
      $(this).val(null);
  }).blur(function()
  {
    if($(this).val().trim() == "")
      $(this).val("Write your comment here...");
  });
  
  $("#whoami span").click(function()
  {
    $content = $("#whoami-content");
    visible = $content.is(":visible");
    if(visible == true)
    {
      $content.fadeOut();
      $(this).html("&raquo; whoami?");
    }
    else
    {
      $content.fadeIn();
      $(this).html("&laquo; hideme");
    }
  });
  ///////////////////////////////// jQuery UI Code Below
  
  $('#author_birthday').datepicker( {
    dateFormat: 'yy-mm-dd',
    changeMonth: true,
    changeYear: true,
    yearRange: '1975:2005'
  });
});
