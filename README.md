# Docker Git

A simple docker container using Arch to get the latest version of git.

Made because I get package conflicts if I try to use the ppa for the latest git
version on my machine.

## Usage

Add to path:

```bash
export PATH="$PATH:$HOME/repos/mine/docker_git"
```

Run command:

```no-highlight
$ dgit status
On branch master
Your branch is up to date with 'origin/master'.
```

On first run it will build the image, after that it will use the existing image.
