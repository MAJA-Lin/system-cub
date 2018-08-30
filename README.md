# System cub
===========================


Bash script to install essential tools automatically

This repository is my customized and test scrpts set based on [snwh/ubuntu-post-install](https://github.com/snwh/ubuntu-post-install).

If you have any question, please check the organization and code in the original repository.

## Usage

Copy personal_config file and modify the setting

``` bash
cp ./data/personal_config.example ./data/personal_config
```

You can also choose the tools you want to install in

**./data/dev_tool.list**

then run init-installation.sh

``` bash
. ./init-installation.sh
```