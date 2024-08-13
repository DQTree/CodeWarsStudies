import pygame
import sys
import threading

WIDTH, HEIGHT = 540, 540
LINE_COLOR = (0, 0, 0)
BG_COLOR = (255, 255, 255)
NUM_COLOR = (0, 0, 0)
FONT_SIZE = 40

pygame.init()
screen = pygame.display.set_mode((WIDTH, HEIGHT))
pygame.display.set_caption('Sudoku Solver Visualizer')
font = pygame.font.SysFont(None, FONT_SIZE)

sudoku_board = [
    [5, 3, 0, 0, 7, 0, 0, 0, 0],
    [6, 0, 0, 1, 9, 5, 0, 0, 0],
    [0, 9, 8, 0, 0, 0, 0, 6, 0],
    [8, 0, 0, 0, 6, 0, 0, 0, 3],
    [4, 0, 0, 8, 0, 3, 0, 0, 1],
    [7, 0, 0, 0, 2, 0, 0, 0, 6],
    [0, 6, 0, 0, 0, 0, 2, 8, 0],
    [0, 0, 0, 4, 1, 9, 0, 0, 5],
    [0, 0, 0, 0, 8, 0, 0, 7, 9]
]

#   Lock for thread-safe board updates
board_lock = threading.Lock()

def render_sudoku_board(screen, puzzle):
    screen.fill(BG_COLOR)

    grid_size = len(puzzle)
    cell_size = WIDTH // grid_size

    #   Draw grid lines
    for i in range(grid_size + 1):
        line_width = 3 if i % 3 == 0 else 1
        pygame.draw.line(screen, LINE_COLOR, (0, i * cell_size), (WIDTH, i * cell_size), line_width)
        pygame.draw.line(screen, LINE_COLOR, (i * cell_size, 0), (i * cell_size, HEIGHT), line_width)

    #   Draw numbers
    for row in range(grid_size):
        for col in range(grid_size):
            if puzzle[row][col] != 0:
                num_text = font.render(str(puzzle[row][col]), True, NUM_COLOR)
                screen.blit(num_text, (col * cell_size + cell_size // 3, row * cell_size + cell_size // 5))

def sudoku(puzzle):
    grid_size = len(puzzle)

    def is_valid(puzzle, num, pos):
        row, col = pos
        for i in range(grid_size):
            if puzzle[row][i] == num or puzzle[i][col] == num:
                return False
        box_x = (col // 3) * 3
        box_y = (row // 3) * 3
        for i in range(box_y, box_y + 3):
            for j in range(box_x, box_x + 3):
                if puzzle[i][j] == num:
                    return False
        return True

    def solve():
        for i in range(grid_size):
            for j in range(grid_size):
                if puzzle[i][j] == 0:
                    for num in range(1, 10):
                        if is_valid(puzzle, num, (i, j)):
                            with board_lock:
                                puzzle[i][j] = num
                            if solve():
                                return True
                            with board_lock:
                                puzzle[i][j] = 0
                    return False
        return True

    solve()

    return puzzle

def main():
    clock = pygame.time.Clock()

    #   Start the solver in a separate thread
    solver_thread = threading.Thread(target=sudoku, args=(sudoku_board,))
    solver_thread.start()

    solver_thread.join()

    while True:
        for event in pygame.event.get():
            if event.type == pygame.QUIT:
                pygame.quit()
                sys.exit()

        with board_lock:
            render_sudoku_board(screen, sudoku_board)

        pygame.display.flip()
        clock.tick(60)

if __name__ == "__main__":
    main()
