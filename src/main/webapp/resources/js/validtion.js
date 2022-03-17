checkNull = function(obj, value, messaege){
	
	
	
	if(value == '' || value == null ){
			alert(value + messaege);
			obj.focus();
			return false;
	}
		
}


checkValue = function(value){

	alert(value);


}




