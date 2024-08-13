export default function playPass(s, n) {
    let result = ""
    let actualShift = n % 26

    for (let i = s.length - 1; i >= 0; i--) {
        let chr = s[i]
        let chrCode = chr.charCodeAt()

        // Rotate
        if (chr >= 'a' && chr <= 'z') {
            let newCharCode = chrCode + actualShift
            if (newCharCode > 122) {
                newCharCode = (newCharCode - 122) + 96
            }
            chr = String.fromCharCode(newCharCode)

        } else if (chr >= 'A' && chr <= 'Z') {
            let newCharCode = chrCode + actualShift
            if (newCharCode > 90) {
                newCharCode = (newCharCode - 90) + 64
            }
            chr = String.fromCharCode(newCharCode)
        }

        // Complement
        if (chrCode >= 48 && chrCode <= 57) {
            const digit = parseInt(chr)
            const complementedDigit = 9 - digit
            chr = complementedDigit.toString()
        }

        // Casing
        if (chr >= 'A' && chr <= 'Z' || chr >= 'a' && chr <= 'z') {
            if (i % 2 == 0) {
                chr = chr.toUpperCase()
            } else {
                chr = chr.toLowerCase()
            }
        }

        result += chr
    }

    return result
}