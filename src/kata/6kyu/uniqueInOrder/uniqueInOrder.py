from itertools import groupby


def unique_in_order(sequence):
    return list([i[0] for i in groupby(sequence)])
