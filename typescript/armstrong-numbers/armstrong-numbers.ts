export function isArmstrongNumber(number: number): boolean {
  let pow = number.toString().length;
  let sum = 0;
  let temp = number;
  while (temp > 0) {
    let reminder = temp % 10;
    // raise by pow
    sum += reminder ** pow;
    // floor by 10
    temp = ~~(temp / 10);
  }
  if (number === sum) {
    return true;
  } else {
    return false;
  }
}
