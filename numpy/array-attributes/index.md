# Numpy Array Attributes

Numpy arrays have several properties which provide information about the array. Below I will demonstrate some of those.

## 1. `shape`
You can get shape of an array using `shape` attribute. This is a tuple which contains dimensions of the array.

```python
a = np.array([1,2,3])
a.shape # (3,)
```

```python
a = np.array([[1,2,3], [4,5,6]])
a.shape # (2, 3)
```

## 2. `dtype`

The `dtype` attribute is used to get the data type of the array.

```python
a = np.array([1,2,3])
a.dtype # dtype('int64')
```

```python
b = np.array([True, False, True])
b.dtype # dtype('bool')
```

## 3. `size`

The `size` attribute is used to get the total number of elements in the array.

```python
a = np.array([[1,2,3], [4,5,6]])
a.size # 6
```

## 4. `ndim`

The `ndim` attribute is used to get the number of dimensions of the array. For example, for 2D array, `ndim` will be 2 and for 3D array, `ndim` will be 3.

```python
a = np.array([[1,2,3], [4,5,6]])
a.ndim # 2
```

## 5. `itemsize`

This is used to get the size of each element of the array in bytes. As you saw above for this machine, the default integer type is `int64` which is 8 bytes.

```python
a = np.array([1,2,3])
a.itemsize # 8
```

## 6. `nbytes`

This is used to get the total size of the array in bytes. This is the product of `itemsize` and `size`.

```python
a = np.array([[1,2,3], [4,5,6]])
a.nbytes # 48
```

## 7. `data`

This is used to get the memory address of the array. This is a read-only property.

```python
a = np.array([1,2,3])
a.data # <memory at 0x7fd3ab328880>
```