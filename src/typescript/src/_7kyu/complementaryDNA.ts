const complementMap: { [key: string]: string } = {
    'A': 'T',
    'T': 'A',
    'C': 'G',
    'G': 'C'
};

export function dnaStrand(dna: string): string {
    return dna.replace(/[ATCG]/g, (match: string) => complementMap[match]);
}