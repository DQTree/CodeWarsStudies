export const findOdd = (xs: number[]): number => {
    const map: Map<number, number> = new Map();

    xs.forEach(e => {
        if (map.has(e)) {
            map.set(e, (map.get(e) as number) + 1);
        } else {
            map.set(e, 1);
        }
    });

    for (const [key, value] of map.entries()) {
        if (value % 2 !== 0) {
            return key;
        }
    }

    return 0;
};
