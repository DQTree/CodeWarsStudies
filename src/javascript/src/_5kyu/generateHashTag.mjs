export function generateHashtag(str) {
    if (str.trim().length === 0) return false;

    const hashtag = '#' + str.split(' ')
        .filter(word => word.length > 0)
        .map(word => word.charAt(0).toUpperCase() + word.slice(1).toLowerCase())
        .join('');

    return hashtag.length > 140 ? false : hashtag;
}