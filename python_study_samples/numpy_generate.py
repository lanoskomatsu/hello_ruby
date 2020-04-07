import numpy as np

ndarray = np.array([1, 2, 3])
print(ndarray)

print(np.arange(0, 5, 2))
print(np.arange(5))
print(np.arange(0, 5))
print(np.arange(0, 5, 0.1))

print(np.linspace(1, 2, 20))

def add_world(hello):
    hello += ' world'
    return hello

h_str = 'hello'
h_list = ['h', 'e', 'l', 'l', 'o']
output_str = add_world(h_str)
output_list = add_world(h_list)

print('output_str: {}'.format(output_str))
print('output_list: {}'.format(output_list))

print('h_str: {}'.format(h_str))
print('h_list: {}'.format(h_list))


def change_hundred(array):
    array[0] = 100
    return array

def change_hundred_copy(array):
    array_copy = array.copy()
    array_copy[0] = 100
    return array_copy

array_1 = np.arange(0, 4)
array_2 = np.arange(0, 4)

output_array = change_hundred(array_1)
output_array_copy = change_hundred_copy(array_2)

print('original array_1:\n', array_1)
print('original array_2:\n', array_2)

shape = (2, 3, 5)
zeros = np.zeros(shape)
print(zeros)

shape = (2, 3, 5)
ones_array_1 = np.ones(shape)
ones_array_2 = np.ones(4)

print(ones_array_1)
print(ones_array_2)

shape = (2, 3, 5)
ones_array_1 = np.ones(shape)
ones_array_2 = np.ones(4)

print(ones_array_1)
print(ones_array_2)

print(np.eye(3))

random_float = np.random.rand()
random_1d = np.random.rand(3)
random_2d = np.random.rand(3, 4)

print('random_float: {}\n'.format(random_float))
print('random_1d: {}\n'.format(random_1d))
print('random_2d: {}\n'.format(random_2d))

random_float = np.random.randn()
random_1d = np.random.randn(3)
random_2d = np.random.randn(3, 4)

print('random_float: {}\n'.format(random_float))
print('random_1d: {}\n'.format(random_1d))
print('random_2d: {}\n'.format(random_2d))

random_float = np.random.randn()
random_1d = np.random.randn(3)
random_2d = np.random.randn(3, 4)

print('random_float: {}\n'.format(random_float))
print('random_1d: {}\n'.format(random_1d))
print('random_2d: {}\n'.format(random_2d))

print(np.random.randint(10, 50, size=(2, 4, 3)))

array = np.arange(0, 10)
print('array:\n{}'.format(array))
new_shape = (2, 5)
reshaped_array = array.reshape(new_shape)
print('reshaped array:\n{} '.format(reshaped_array))
print("reshaped array's is:\n{} ".format(reshaped_array.shape))
print('original array is NOT changed:\n{}'.format(array))
