export function sumPairs(ints: number[], s: number): [number, number] | void {  
  let l = 0;
  let r = ints.length-1;

  let set = ints.reduce((acc, curr, idx) => {
    if (!acc[curr]) {
      acc[curr] = []
    }
    acc[curr].push(idx)
    return acc
  }, {} as { [key: number]: number[] })

  let res: [number, number] | void = undefined;

    for (let num in set) {
    const num1 = parseInt(num)
    const indices1 = set[num1]
    
    for (let num2 in set) {
      const num2Val = parseInt(num2)
      const indices2 = set[num2Val]
      
      if (num1 + num2Val === s) {
        for (let i of indices1) {
          for (let j of indices2) {
            if (i < j) {
              if (!res || j < res[1]) {
                res = [num1, num2Val]
              }
            }
          }
        }
      }
    }
  }

  return res
}