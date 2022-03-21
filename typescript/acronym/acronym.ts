export function parse(phrase: string): string {
  const initials = phrase.match(/(\b\w|(?<=[a-z])[A-Z])/g) || [];
  return Array.from(initials).join("").toUpperCase();
}
