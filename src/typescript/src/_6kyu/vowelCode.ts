const TRANSLATOR: { [key: string]: string } = {
    'a': '1',
    'e': '2',
    'i': '3',
    'o': '4',
    'u': '5',
}

const REVERSE_TRANSLATOR: { [key: string]: string } = Object.fromEntries(
    Object.entries(TRANSLATOR).map(([k, v]) => [v, k])
)

// turn vowels into numbers
export function encode(string: string): string {
    return string.replace(/[aeiou]/g, function(x) {
        return TRANSLATOR[x] || x
    })
}

// turn numbers back into vowels
export function decode(string: string): string {
    return string.replace(/[12345]/g, function(x) {
        return REVERSE_TRANSLATOR[x] || x
    })
}