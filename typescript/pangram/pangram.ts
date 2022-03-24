export function isPangram(sentence: string): boolean {
  return new Set(sentence.toLowerCase().replaceAll(/[^a-z]/g, "")).size === 26;
}
