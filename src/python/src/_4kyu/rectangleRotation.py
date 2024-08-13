import math


def rectangle_rotation(a, b):
    points = 0
    
    # Define boundaries (since the rectangle is centered at the origin)
    w_start = -a // 2
    w_end = a // 2
    h_start = -b // 2
    h_end = b // 2

    # Iterate over the grid
    for w in range(w_start, w_end + 1):
        for h in range(h_start, h_end + 1):
            if is_point_in_rotated_rect(w, h, a, b):
                points += 1
    
    return points

def is_point_in_rotated_rect(px, py, w, h):
    # Rotate the point by -45 degrees (or -pi/4 radians)
    px_double_prime = (px - py) / math.sqrt(2)
    py_double_prime = (px + py) / math.sqrt(2)
    
    # Check if the point is within the bounds of the axis-aligned rectangle
    if abs(px_double_prime) <= w / 2 and abs(py_double_prime) <= h / 2:
        return True
    else:
        return False