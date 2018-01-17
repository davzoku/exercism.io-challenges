function HelloWorld 
{
	param([string]$person)
	if ($person){
    	return "Hello $person!"
    }
    else {
    	return "Hello World!"
	}
}