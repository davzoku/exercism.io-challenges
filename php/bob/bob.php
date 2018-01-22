<?php

class Bob {
	function respondTo($input){
	if (preg_match('/^\s*$/', $input)){
        return "Fine. Be that way!";
    }
    else if (preg_match('/[A-Z]/', $input) &&
            !preg_match('/[a-z]/', $input)){
        return "Whoa, chill out!";
    }
    else if (preg_match('/\?\s*$/', $input)){
        return "Sure.";
    }
	else {    
    	return "Whatever.";
    	}
    }
}
?>