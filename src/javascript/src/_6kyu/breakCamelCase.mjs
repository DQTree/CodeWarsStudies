export function breakCamelCase(string) {
    const matches = string.match(/\d+|[A-Z][a-z]*|[a-z]+/g);
    return matches ? matches.join(' ') : string;
}