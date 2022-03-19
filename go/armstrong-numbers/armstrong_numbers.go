package armstrong

import (
	"math"
	"strconv"
)

func IsNumber(n int) bool {
	var pow = len([]rune(strconv.Itoa(n)));
	sum := 0;
	temp := n;

	for temp > 0 {
		var reminder = temp % 10
		// raised by pow
		sum += int(math.Pow(float64(reminder), float64(pow)));
		// floor by 10
		temp = temp / 10;
	}

	if (n == sum){
		return true;
	} else {
		return false;
	}
}