export const disemvowel = (str: string): string => {
    return str.replace(/[aeiouAEIOU]/g, '')
}