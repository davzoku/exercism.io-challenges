<?php

function isPangram(string $str){
    $str = strtolower($str);
    $chars = array_filter(str_split($str), 'ctype_alpha');
    $alphabet = range('a', 'z');
	return empty(array_diff($alphabet, $chars));
}

?>

