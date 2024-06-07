export function add(a) {
    const adder = function (b) {
        if (typeof b === 'function') {
            b = b.valueOf()
        }
        return add(a + b)
    }

    adder.valueOf = () => a
    adder.toString = () => a

    return adder
}