<?php

const GIGASECOND = 10**9;
/*     PT = Time Period; S = Seconds */
function from($date){
	return (clone $date) -> add(new DateInterval('PT'.GIGASECOND.'S'));
}
?>