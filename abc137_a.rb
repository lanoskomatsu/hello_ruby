input = gets.split(" ")
a = input[0].to_i
b = input[1].to_i

x = a + b
y = a - b
z = a * b

p [x, y, z].max

