<?php

function encode($input)
{
    $pattern = '/(.)\1*/';
    
    $output= preg_replace_callback($pattern,
        function($matches){
            $length = strlen($matches[0]);
            return ($length >1 ? $length : '').$matches[1];
        },
        $input);
    return $output;
        
}

function decode($input)
{
    $pattern = '/(\d+)(\D)/';

    $output = preg_replace_callback($pattern,
        function ($matches) {
            return str_repeat($matches[2], $matches[1]);
        },
        $input);
    return $output;
}

?>