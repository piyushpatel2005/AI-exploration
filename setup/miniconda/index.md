# Set up Miniconda

## What is Miniconda

Miniconda is a free, miniature installation of Anaconda Distribution that includes only the essential components. These includes conda, Python, the packages they both depend on and a small set of useful packages.

## Set up for WSL/Ubuntu

These set of instructions will help you set up Miniconda in Linux or Windows Subsystems for Linux environment. Miniconda is available as an executable script which you can download from the anaconda website. If you have `wget` installed in your system, you can simply get the script using below command.

This is ideal for small installation because it doesn't install all the scientific packages which comes installed by default with Anaconda full distribution. You can install only what you need. This also helps with those who have limited local disk in their .

> **Note:** In 2020, Anaconda updated their Terms of Service prohibiting usage of Anaconda as well as Miniconda for commercial use. Please, use it only after reading their latest licence terms.

```shell
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
```

Once you've downloaded the script, you can execute it using `bash`

```bash
bash Miniconda3-latest-Linux-x86_64.sh
```

This will start the installation process and in between may ask for your permissions to agree to the terms as well as to specify the location where you want to install miniconda in your local system. You might need to run this command at the end of the installation in order to activate `conda` in your current session.

```shell
eval "$(/home/piyushpatel/miniconda3/bin/conda shell.bash hook)"
```

## Verify the installation

After the installation, you need to restart the shell and run below command.

```bash
conda init
```

If you get error saying `conda command not found`, then try the full path of the conda installation directory like below.

```bash
/home/<your_user_name>/miniconda3/bin/conda init
```

This will set up conda as the default environment for your shell session. Next time when you restart your shell, you will see the `base` python environment set up for you.
Now, you can run `conda` commands.

```bash
conda --version
```

You can also use the command `conda info` to get more details on your local conda installation.

If you ever get stuck with your `conda` commands, you can use `-h` option or `--help` option with the subcommand you want to know more about. This will provide you more detailed documentation on that specific command. For example, you can use `conda config --help` to find options related to `config` subcommand.

If you want that conda's base environment is not activated by default on shell startup, you can set below option to `false` using conda configuration.

```bash
conda config --set auto_activate_base false
```

Once you've verified that the installation of `conda` is successful, you can remove the bash script.

```shell
rm Miniconda3-latest-Linux-x86_64.sh
```

## Using Miniconda

Now that you've conda installed, you can use it to create virtual environments. These are also called conda environments.

1. Create new environment using below command.

```bash
conda create --name <new_environment_name>
```

2. List all available environments. This command can be useful if you are working on multiple projects with different requirements and you've multiple environments in your local system.

```bash
conda env list
```

3. Activate a specific environment

```bash
conda activate <environment_name>
```

4. Deactivate current environment.

```bash
conda deactivate
```

5. Remove a specific environment

```bash
conda env remove -n <environment_name>
```

6. List the packages with their versions installed in the current environment.

```bash
conda list
```

7. Install a new package in the active environment

```bash
conda install numpy
```

8. Update a package in the current environment.

```bash
conda update numpy
```

9. Remove one or more packages

```bash
conda remove --name <environment_name> scikit-learn pandas
```

10. Search for a package name.

```bash
conda search <package_name>
```

11. Install a different version of Python in the new environment

```bash
conda create --name <python_env_name> python=3.9
```

## Sharing Environment

When working on a project, you might collaborate with other Data scientists and they might need similar environment set up on their end. For this, you could share all your packages with your code or alternatively, you could just provide them information about the packages they need to install. The second is possible using environment configuration file. 

1. Export your active environment into a file.

```bash
conda env export > my_env.yml
```

Once the other developer has this environment configuration file, they can set up their environment using this configuration file.

```bash
conda env create -n <new_env_name> --file my_env.yml
```