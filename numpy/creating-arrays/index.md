# Creating Numpy Arrays

Numpy's basic data structure is called `ndarray`. This is basically n-dimensional array.

There are four main ways to create Numpy arrays.

1. Create Numpy array using Python sequences.
2. Using Numpy array creation objects such as `arange`, `ones`, `zeros`, etc.
3. Use Special package functions like `random` to create `ndarray`.
4. Create array by loading data from files.

In order to work with `numpy`, you first import `numpy` as `np`.

```python
import numpy as np
```

## 1. Array using Python sequences

You can easily construct `ndarray` using `array` functino defined in the `numpy` by passing any Python list.

```python
a = np.array([1,2,3])
a
```

```plaintext
array([1, 2, 3])
```

Internally, Numpy stores the data in ndarray format which is not exactly Python list. It's lot more concise and memory-efficient storage.

You can also create numpy array of other types using the same syntax.

```python
float_arr = np.array([.1, .2, .3])
```

If you check the type of this array `a`, you will notice that it's a `numpy.ndarray` type.

```python
type(a)
```

```plaintext
numpy.ndarray
```

You can also create an array using tuples.

```python
b = np.array((1,2,3))
type(b)
```

If you want to create a multi-dimensional array, you can use Python nested lists as shown below.

```python
c = np.array([[1,2,3], [4,5,6]])
print(c)
```

```plaintext
[[1 2 3]
 [4 5 6]]
```

Again this is of type `numpy.ndarray`.

## 2. Using Numpy array creation objects

Numpy provides some useful objects to create arrays. These are called array creation objects.

You can use `arange` to create an array of evenly spaced values. This is similar to `range` function in Python language.

```python
a = np.arange(5)
print(a)
```

```plaintext
[0 1 2 3 4]
```

Again, you can specify `start`, `stop` and `step` arguments to this function.

```python
b = np.arange(1, 10, 2)
print(b)
```

```plaintext
[1 3 5 7 9]
```

You can use `ones` and `zeros` to create arrays of ones and zeros. You can specify the shape of the array you want to create using `shape` argument and all items of these arrays will be set to 1 or 0.

```python
zeros = np.zeros((3,4))
print(c)
```

```plaintext
[[0. 0. 0. 0.]
 [0. 0. 0. 0.]
 [0. 0. 0. 0.]]
```

```python
ones = np.ones((2, 3))
print(ones)
```

```plaintext
[[1. 1. 1.]
 [1. 1. 1.]]
```

The `np.linspace` function is used to create an array of evenly spaced values in a specified interval.

```python
linspace = np.linspace(0, 10, 5)
print(linspace)
```

```plaintext
[ 0., 2.5, 5., 7.5, 10.]
```

You can use `repeat` function to create an array by repeating an existing array multiple times.

```python
a = np.array([1,2,3])
repeat = np.repeat(a, 3)
print(repeat)
```

```plaintext
[1 1 1 2 2 2 3 3 3]
```

The `np.eye(n, m)` function is used to create 2D identity matrix. This creates a matrix with ones on the diagonal and zeros elsewhere.

```python
eye = np.eye(3)
print(eye)
```

```plaintext
[[1. 0. 0.]
 [0. 1. 0.] 
 [0. 0. 1.]]
```

## 3. Using Special package functions

There are other functions in `numpy` package which can be used to create `ndarray`. These are `random`, `linspace`, `logspace`, etc.

`random.rand` function is used to create numpy array with uniform distribution of values between 0 and 1 where 1 is not included.

```python
a = np.random.rand(4)
print(a) # array([0.84820803, 0.99881827, 0.66085478, 0.024759  ])
```

If you want to create random array with normal distribution, you can use `random.randn` function.

```python
a = np.random.randn(3)
print(a) # array([-0.0002543,  0.97532539, -0.00260099])
```

You can also generate an array with random integers using `random.randint` function.

```python
a = np.random.randint(1, 10, (2, 3))
print(a)
```

```plaintext
[[3 6 8]
 [1 4 1]]
```

## 4. By reading data from file

You can also create an array by loading data from a file. This is useful when you want to work with data stored in external files. This is also the common way to work with `numpy`. For example, you could load image data from a file and work with it using `numpy` functions.

Assume you have a file with below content.

```plaintext
1,2,3
4,5,6
```

You can create a numpy array from this file using `loadtxt` function.

```python
a = np.loadtxt('data.txt', delimiter=',')
print(a)
```

```plaintext
[[1 2 3]
 [4 5 6]]
```

You can also save numpy array to a file using `savetxt` function. You can specify the name of the file and the array to be saved as arguments.

```python
np.savetxt('data.txt', a)
```