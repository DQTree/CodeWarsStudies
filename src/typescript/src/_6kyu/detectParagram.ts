export const isPangram = (phrase: string): boolean => {
    const lettersOnly = phrase.toLowerCase().match(/[a-zA-Z]/g) || [];
    const set = new Set(lettersOnly);
    return set.size == 26
}