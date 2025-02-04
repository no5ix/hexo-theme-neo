---
title: A shell plugin that provides interactive Tab search & completion for any path
date: 2022-08-22 22:48:12
tags:
- GitHub
categories:
- GitHub
top: 2
---



[<i class="fa fa-fw fa-github fa-2x"></i>tab-to-find](https://github.com/no5ix/tab-to-find) 


# tab-to-find

One tab enables interactive and dynamic search for everything!!

It also supports tab dynamic completion of commands for the paths of any directories and files. 

It is extremely useful for people who often need to find files and are troubled by entering very long paths. There is no need to type the paths one by one slowly. You can search and reach the target in one step. Even if there are **millions** of files, it is still very smooth and not laggy at all.

Abbreviation: TTF


# Demo

![tab-to-find-demo.gif](https://raw.githubusercontent.com/no5ix/tab-to-find/main/tab-to-find-demo.gif)


# features

- Just press tab as usual.
    - Without entering anything, tab can directly and dynamically search for all directories and files in the current directory and its subdirectories. It's also very useful just as a search tool.
    - Use tab to autocomplete.
        - It doesn't necessarily have to be an exact match at the beginning. For example, if you enter `doc` and then press tab, it can match `test_doc`, `doc_test`, and `test_doc_test`.
        - It can recursively match all files/directories with `doc` in the subdirectories of the current directory. That means you can enter `cd doc` in the `home` directory and directly `cd` from the `home` directory to `~/github/test - proj/documents` in one step!
           - If there is only one match, it will be automatically completed.
              - For example, if it matches `Documents/`, but if that's not what you want and you want `~/github/test - proj/documents`, you can press tab again.
           - If there is more than one match, it will recursively search all folders containing `doc` in the subdirectories.
        - If what follows `cd` is not a directory, it will automatically enter the directory where that file is located. For example, if you enter `cd ~/github/test.txt`, it can directly enter the `~/github` folder.
        - If the input ends with `//`, it can search only for folders in one level of the directory, instead of recursively searching all subdirectories.
        - If the input ends with `..`, it can search only for files in one level of the directory, instead of recursively searching all subdirectories.
        - The same applies to other commands such as `vi`, `ln`, `mv`, `cp`, etc.


# Usage

- Press tab to search everything
- Press tab for completion as usual


**. . .**<!-- more -->


# 安装方法

1. 先安装fd, 按照 [fd的安装方法](https://github.com/sharkdp/fd#installation) 安装一下就行(一般来说就是一行命令就搞定), 不用额外配置
2. 再安装fzf, 按照 [fzf的安装方法](https://github.com/junegunn/fzf#installation) 安装一下就行(一般来说就是一行命令就搞定), 不用额外配置
3. 然后再按照下方的[手动方式](#手动方式) 或者 走[Oh-My-Zsh方式](#OhMyZsh方式)的方式来安装 `tab-to-find` 就可以了


## 手动方式

先克隆一波这个项目

```zsh
git clone https://github.com/no5ix/tab-to-find ~/somewhere
```

然后把下面这行加到你的 `~/.zshrc`.

```zsh
source ~/somewhere/tab-to-find.plugin.zsh
```

## OhMyZsh方式

执行下面这行命令

```zsh
git clone https://github.com/no5ix/tab-to-find ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/tab-to-find
```

1. 然后`vim ~/.zshrc`, 找到七八十行左右 `plugins=(git)` 的位置 比如原来是 `plugins=(git)` 则改为 `plugins=(git tab-to-find)`
2. `source ~/.zshrc` 或者重启 zsh


# Installation

1. Install [fd](https://github.com/sharkdp/fd) by following its [installation instruction](https://github.com/sharkdp/fd#installation).
2. Install [fzf](https://github.com/junegunn/fzf) by following its [installation instruction](https://github.com/junegunn/fzf#installation).
3. then install `tab-to-find` by following [Manual](#Manual) or [Oh-My-Zsh](#OhMyZsh) below


## Manual

clone this repository.

```zsh
git clone https://github.com/no5ix/tab-to-find ~/somewhere
```

Then add the following line to your `~/.zshrc`.

```zsh
source ~/somewhere/tab-to-find.plugin.zsh
```


## OhMyZsh

Clone this repository to your custom directory and then add `tab-to-find` to your plugin list.

```zsh
git clone https://github.com/no5ix/tab-to-find ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/tab-to-find
```


