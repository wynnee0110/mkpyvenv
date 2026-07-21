# mkpy

Create a small Python project with a virtual environment, starter files, and a Git repository.

## Install

After you upload this repository to GitHub, update `YOUR_USERNAME` in `install.sh`, then users can install it with:

```sh
curl -fsSL https://raw.githubusercontent.com/YOUR_USERNAME/mkpy/main/install.sh | bash
```

By default, this installs the command to `~/.local/bin/mkpy`.

If `~/.local/bin` is not in the user's `PATH`, add this to `~/.bashrc`, `~/.zshrc`, or the shell profile they use:

```sh
export PATH="$HOME/.local/bin:$PATH"
```

## Usage

```sh
mkpy my_project
```

This creates:

- `my_project/venv`
- `my_project/main.py`
- `my_project/requirements.txt`
- `my_project/README.md`
- `my_project/.gitignore`
- a new Git repository, when `git` is installed

## Local Install

From a cloned copy of this repository:

```sh
bash install.sh
```

To install somewhere else:

```sh
INSTALL_DIR=/usr/local/bin bash install.sh
```
