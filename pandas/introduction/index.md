# Introduction to Pandas

Pandas is a Python library for data analysis and manipulation. A library in general is a collection of code which helps solve problems in specific domain. Pandas has become an essential tool for working with data in Python and is extensively used for sorting, filtering, cleaning and aggregating data. At a high level, you work with data in the form of rows and columns. Pandas provides similar data structures called dataframes which can be used to store data in tabular form.

## History of Pandas

The first version of Pandas was developed in 2008 by software developer Wes McKinney. Pandas was released to the public use in late 2009 and has seen exponential growth since its release. In fact, some of Python's popularity can be attributed to Pandas library because this library enabled many data scientists to work with wide variety of data easily and hence the whole data science ecosystem was built in Python.

## Features of Pandas

- **Open source** Pandas is open source which means the source code is publicly available for you to download, use, modify and further distribute.
- **Fast and Efficient** Pandas uses lower-level languages such as C for many of its calculations and it is fast to process millions of rows of data in a few seconds.
- **Easy to use** Pandas is easy to use and has a simple syntax which makes it easy to learn and use.
- **Data Types** Pandas provides a wide range of data types which can be used to store different types of data efficiently. There are data types for text, dates, times, missing data, etc.
- **Powerful Ecosystem** Pandas has a huge ecosystem of libraries which can be used to work with different types of data. These libraries include NumPy, Matplotlib, Seaborn, Jupyter notebook, etc. which makes working with different data easier. Pandas easily integrates with these libraries.

## Installation of Pandas

If you're working with Python packages, it's recommended to use virtual environments. You can have your virtual environment created using `venv` or `conda`. Once you've your virtual environment set up, you can use `pip` to install Pandas. 

```bash
python -m venv pandas_env
source pandas_env/bin/activate
pip install pandas
```

You can also install jupyter notebook using `pip` as well.

```bash
pip install jupyter
```

If you're using `conda`, you can use below commands.

```bash
conda create --name pandas_env
conda activate pandas_env # activate conda environment
conda install pandas
conda install jupyter
```