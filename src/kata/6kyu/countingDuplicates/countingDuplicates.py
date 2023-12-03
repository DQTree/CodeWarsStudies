from collections import Counter


def duplicate_count(text):
    counter = Counter(text.lower())
    return len([letter for letter in counter if counter[letter] > 1])
