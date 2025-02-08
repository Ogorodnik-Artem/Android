import numpy as np
import math
from sympy.solvers import solve
from sympy import Symbol

def krylova_method(A):
    c = []
    n = A.shape[0]
    c.append(np.zeros(n))
    c[0][0] = 1
    
    for i in range(n):
        c.append(np.dot(A, c[i]))
    
    c_n = c[n]
    C = np.array(c[:n])
    p = list(reversed(np.linalg.solve(C.T, c_n)))
    
    x = Symbol('x')
    P_n = x**n
    for i in range(n):
        P_n -= x**(n-i-1) * p[i] 
    eigenvalues = solve(P_n, x)
    
    eigenvectors = []
    for k in range(n):
        b = [1 for _ in range(n)]
        for i in range(1, n):
            b[i] = b[i-1] * eigenvalues[k] - p[i-1]
        x = np.sum([b[i] * C[n - i - 1] for i in range(n)], axis=0)
        eigenvectors.append(x)
    
    return eigenvalues, eigenvectors

# Задаём матрицу
A = np.array([
    [0.55847999, 0.01140949, 0.10609646, -0.06358497, 0.44942866],
    [0.01140949, 0.9712697, -0.00130896, 0.08979287, 0.04636261],
    [0.10609646, -0.00130896, 0.6173876, -0.17167046, 0.23307438],
    [-0.06358497, 0.08979287, -0.17167046, 0.63283291, -0.0395998],
    [0.44942866, 0.04636261, 0.23307438, -0.0395998, 0.85264006]
])

# Вызываем функцию для поиска собственных значений и векторов
eigenvalues, eigenvectors = krylova_method(A)

# Печатаем результат
print("Eigenvalues:", eigenvalues)
print("Eigenvectors:")
for vec in eigenvectors:
    print(vec)
