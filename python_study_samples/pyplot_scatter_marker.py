import matplotlib.pyplot as plt
X1 = [91, 45, 17, 88, 47, 87, 49, 56, 67, 23, 86, 20, 60, 67, 30, 41, 91, 55, 37, 14]
Y1 = [39, 17, 45, 32, 20, 14, 11, 48, 41, 13, 21, 40, 13, 14, 11, 40, 21, 18, 50, 25]
X2 = [28, 39, 47, 21, 34, 38, 50, 83, 47, 28, 35, 57, 48, 31, 43, 24, 11, 18, 49, 62]
Y2 = [48, 29, 12, 59, 28, 58, 32, 34, 89, 82, 52, 66, 62, 53, 22, 24, 39, 28, 59, 38]
plt.scatter(X1, Y1, marker = "+", color = "red")
plt.scatter(X2, Y2, marker = "^", color = "green")
plt.show()