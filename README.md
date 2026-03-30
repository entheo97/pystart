# pystart

Automates new Python project setup with a single command. On execution pystart creates 
the project directory, initializes a Git repository, writes a standard Python .gitignore, 
sets up a virtual environment via venv, and stubs out README.md and a project-named 
Python file with #!/usr/bin/env python3 prewritten.

## What it does

Running `pystart <project-name>` creates a new project directory with the following structure:
```
project-name/
├── project-name.py
├── requirements.txt
├── README.md
├── .gitignore
└── .venv/
```

It also initializes a Git repository and creates a virtual environment automatically.

## Installation

Clone the repo and create a symlink to your local bin.
Replace `/path/to/pystart/` with wherever you cloned the repo:
```bash
git clone git@github.com:entheo97/pystart.git
ln -s /path/to/pystart/pystart.sh ~/.local/bin/pystart
chmod +x /path/to/pystart/pystart.sh
```

## Usage

Run from the parent directory of where you want your project created:
```bash
pystart <project-name>
```

Then follow the prompt:
```bash
cd <project-name> && source .venv/bin/activate
```

To deactivate the virtual environment when done:
```bash
deactivate
```

## Dependencies

- Python 3
- Git
- bash

## Compatibility

Tested on Ubuntu 24. Should work on other Linux distros and macOS with minimal adjustment.
