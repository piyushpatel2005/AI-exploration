# Numpy Introduction

Numpy is a Python module that provides support for large, multi-dimensional arrays and matrices, along with a large collection of high-level mathematical functions to operate on these arrays. Numpy provides the core multi-dimensional array object that is necessary for most tasks in scientific computing with Python. So, Numpy is the root of all scientific computing in Python. It is a dependency for every other scientific package in Python environment. The internal memory layouts of Numpy arrays are very similar to those of C and Fortran arrays.

Matrices and vectors are the most important concepts in any scientific problem solutions. So, it's necessary to work with matrices and vectors during scientific problem solution using computer programming. Now, you could use the normal Python arrays, but they are not really efficient enough for scientific problems. That's where Numpy arrays shine and easily outperform Python arrays. In Machine Learning problems, you will mostly be dealing with numbers and those numbers are usually stored in the form of multi-dimensional arrays. Numpy provides super fast and efficient numerical computations on these multi-dimensional arrays.

## Features of Numpy arrays

- Numpy works close to hardware for higher efficiency. 
- It's written in C and uses vectorization which helps reduce the calculations by avoiding loops.
- Numpy is widely used in scientific computations.
- Numpy is free and open source.
- The basic data structure in Numpy is Numpy array.

## Installing Numpy

In order to work with Scientific packages, you can set up Python virtual environment where you can install required packages. Once you have your virtual environment set up, you can install Numpy using below command.

```bash
pip install numpy
```

If you're using `conda`, you can use below command.

```bash
conda install numpy
```

## Using Numpy

To use Numpy package in your code, you first need to import Numpy. The contention in scientific community is to use `np` instead of `numpy` in your code. This way you will not end up typing `numpy` every time but instead can use the shorthand `np`.You can import Numpy using below command.

```python
import numpy as np
```

From next lesson, you will learn how to work with numpy arrays.