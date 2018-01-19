<?php
/*     PT = Time Period */
const GIGASECOND = 'PT1000000000S';

function from($date){
	return (clone $date) -> add(new DateInterval(GIGASECOND));
}
?>