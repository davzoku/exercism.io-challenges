function Compute([string]$strand_a, [string]$strand_b)
{	
	# error handling, throw error as per test req
	if ($strand_a.length -ne $strand_b.length){
    	throw "Mismatching string lengths"
    }
	#convert input string into char array
	$a = [char[]][string]$strand_a
	$b = [char[]][string]$strand_b
    $result = 0
    for ($i = 0; $i -lt $a.length; $i++){
    	if($a[$i] -ne $b[$i]){
        	$result += 1
        }
    }
	return $result
}

# Powershell dont use > < because they are used for input output redirect; use
# -eq equal; -ne not equal
# -lt -le less than, less than or equal
# -gt -ge greater; similar to assembly