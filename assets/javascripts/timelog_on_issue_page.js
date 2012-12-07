jQuery(document).ready(function(){
  if ( !$("#issue-changesets").length ){
    $("<div id='issue-changesets'></div>").insertAfter( $("div.issue").first() );
  }
  $("#issue_timelog").appendTo("#issue-changesets")
});