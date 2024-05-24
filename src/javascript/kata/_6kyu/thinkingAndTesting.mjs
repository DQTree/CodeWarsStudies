export function testIt(arr) {
    const counts = {}

    arr.forEach(o => {
        const split = o.split(" ")
        if (split.length == 2) {
            const [first, second] = split

            if (!counts[first]) counts[first] = { firstCount: 0, secondCount: 0 }
            if (!counts[second]) counts[second] = { firstCount: 0, secondCount: 0 }

            counts[first].firstCount++
            counts[second].secondCount++
        }
    })

    let leastFrequentFirst = null
    let leastFrequentSecond = null
    let minFirstCount = Infinity
    let minSecondCount = Infinity

    // Determine the least frequent parts
    for (const [key, value] of Object.entries(counts)) {
        if (value.firstCount > 0 && value.firstCount < minFirstCount) {
            leastFrequentFirst = key
            minFirstCount = value.firstCount
        }
        if (value.secondCount > 0 && value.secondCount < minSecondCount) {
            leastFrequentSecond = key
            minSecondCount = value.secondCount
        }
    }

    return `${leastFrequentFirst} ${leastFrequentSecond}`
}