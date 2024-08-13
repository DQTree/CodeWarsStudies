type Pair<T1, T2> = {
    first: T1;
    second: T2;
};

export const mix = (s1:string, s2:string): string =>{
    const charCount: Map<string, Pair<number, number>> = new Map()

    const isChar = (c: string): boolean => {
        return /^[a-z]$/.test(c);
    };

    s1.split('').forEach((e) => {
        if (isChar(e)) {
            if (charCount.has(e)) {
                const pair = charCount.get(e);
                if (pair) {
                    charCount.set(e, { first: pair.first + 1, second: pair.second });
                }
            } else {
                charCount.set(e, { first: 1, second: 0 });
            }
        }
    });

    s2.split('').forEach((e) => {
        if (isChar(e)) {
            if (charCount.has(e)) {
                const pair = charCount.get(e);
                if (pair) {
                    charCount.set(e, { first: pair.first, second: pair.second + 1 });
                }
            } else {
                charCount.set(e, { first: 0, second: 1 });
            }
        }
    });

    const sortedEntries = Array.from(charCount.entries())
    .filter((e) => e[1].first > 1 || e[1].second > 1)
    .sort(([charA, pairA], [charB, pairB]) => {
        const lengthA = pairA.first + pairA.second;
        const lengthB = pairB.first + pairB.second;

        if (lengthA !== lengthB) {
            return lengthB - lengthA;
        }

        return charA.localeCompare(charB);
    });

    console.log(sortedEntries)

    const result = sortedEntries.map(([char, pair]) => {
        if (pair.first > pair.second) {
            return `1:${char.repeat(pair.first)}`;
        } else if (pair.second > pair.first) {
            return `2:${char.repeat(pair.second)}`;
        } else {
            return `=:${char.repeat(pair.first)}`;
        }
    }).join('/');

    return result;
}