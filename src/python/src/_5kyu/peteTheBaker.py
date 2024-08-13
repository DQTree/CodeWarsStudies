def cakes(recipe, available):
    possible = float('inf')
    for ingredient, amount in recipe.items():
        if ingredient in available:
            temp = available[ingredient] // amount
            possible = min(possible, temp)
        else:
            return 0
    return possible
