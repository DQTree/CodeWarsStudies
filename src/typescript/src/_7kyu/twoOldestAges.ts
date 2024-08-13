export function twoOldestAges(ages: number[]): number[] {
    const arr = [-1, -1]
    for (let i = 0; i < ages.length; i++) {
        const element = ages[i];
        if(element > arr[1]){
            arr[0] = arr[1]
            arr[1] = element
        }else if(element > arr[0]){
            arr[0] = element
        }
    }
    return arr;
}