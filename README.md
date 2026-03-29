# pystart

A bash scaffolding script that automates Python project setup from the command line.

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

Clone the repo and create a symlink to your local bin:
```bash
git clone git@github.com:entheo97/pystart.git
ln -s ~/scripts/pystart/pystart.sh ~/.local/bin/pystart
chmod +x ~/scripts/pystart/pystart.sh
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

## Dependencies

- Python 3
- Git
- bash
