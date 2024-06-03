export function romanToInteger(roman: string): number {
  const romanDictionary = new Map<string, number>([
    ['I', 1],
    ['V', 5],
    ['X', 10],
    ['L', 50],
    ['C', 100],
    ['D', 500],
    ['M', 1000]
  ]);
  let count = 0;

  for (let i = 0; i < roman.length; i++) {
    const current = romanDictionary.get(roman.charAt(i))!;
    const next = romanDictionary.get(roman.charAt(i + 1)) || 0;

    if (current < next) {
      count -= current;
    } else {
      count += current;
    }
  }

  return count;
}