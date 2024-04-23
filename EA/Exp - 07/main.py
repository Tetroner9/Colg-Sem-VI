import numpy as np
import matplotlib.pyplot as plt

N = int(input("Enter the number of elements: "))
d = float(input("Enter the distance between the elements: "))

k = 2 * np.pi
val = int(input("Choose the type of radiation pattern: \n1. Broadside Array\n2. Endfire Array\n"))

if val == 1:
    theta_m = 90
    B = 0
else:
    val = int(input("Choose the type of endfire array: \n1. Uniform(theta_m=0)\n2. Binomial(theta_m=180)\n"))
    if val == 1:
        theta_m = 0
        B = - k * d
    else:
        theta_m = 180
        B = k * d

theta = np.arange(0.1, 2 * np.pi, 0.1)
sin = k * d * np.cos(theta) + B
AF = (np.sin(N * sin / 2) / (N * np.sin(sin / 2)))
AF_nor = AF / max(AF)

plt.polar(theta, AF_nor)
plt.show()