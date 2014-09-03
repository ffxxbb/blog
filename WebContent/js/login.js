/**
 * µ¯³öµÇÂ½¶Ô»°¿ò
 */
$(function () { 
	
	
	 //$( "#dialog2" ).dialog();
	// $('#dialog_simple').dialog();
    $('#dialog1').click(function () {
    	$('#dialog_login').dialog('open');
    	//$('#dialog_simple').dialog('open');
    	return false;
    });
    $('#dialog_login').dialog({
    	autoOpen: false,
    	width: 400,
    	modal: true
    	/*buttons: {
    	"login": function () {
    	     $(this).dialog("close");
    	  },
    	"cancle": function () {
    	     $(this).dialog("close");
    	  }
       }*/
    });
});