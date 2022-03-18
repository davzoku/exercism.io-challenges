const colorsArray = [
  "black",
  "brown",
  "red",
  "orange",
  "yellow",
  "green",
  "blue",
  "violet",
  "grey",
  "white",
];

export function decodedValue(colors: Array<string>) {
  const firstNumber = colorsArray.indexOf(colors[0]);
  const secondNumber = colorsArray.indexOf(colors[1]);
  return firstNumber * 10 + secondNumber;
}
