import matplotlib.pyplot as plt
import numpy as np
def secant_method(func, x0, x1, tol=1e-6, max_iter=100):
    iter_count = 0
    log_errors = []
    while abs(func(x1)) > tol and iter_count < max_iter:
        x2 = x1 - func(x1) * (x1 - x0) / (func(x1) - func(x0))
        x0, x1 = x1, x2
        iter_count += 1
        log_errors.append(np.log10(abs(func(x1))))

    if iter_count == max_iter:
        print("Maximum iterations reached. No convergence.")
    else:
        print(f"Root approximation: {x1} (converged in {iter_count} iterations)")
    
    plt.plot(range(1, iter_count + 1), log_errors, marker='o')
    plt.xlabel('Iteration')
    plt.ylabel('Logarithm of Absolute Error')
    plt.title('Convergence of Secant Method')
    plt.grid(True)
    plt.show()
    return x1

# Define the equation: 2x - 3 - 11 = 0
equation = lambda x: 2*x - 3 - 11

# Initial guesses
x0 = 0
x1 = 5

# Solve the equation using the secant method
root = secant_method(equation, x0, x1)
