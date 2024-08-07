export function deadFish(data: string): number[] {
    let acc = 0;
    let arr: number[] = [];
    for (let index = 0; index < data.length; index++) {
        const element = data[index];
        switch (element) {
            case 'i':
                acc += 1
            break;
            case 'd':
                acc -= 1
            break;
            case 's':
                acc = acc*acc
            break;  
            case 'o':
                arr.push(acc)
            break;
            default:
                break;
        }
    }
    return arr
}