#!/usr/bin/env bash

# Check if a project name was provided
if [ -z "$1" ]; then
    echo "Usage: pystart <project_name>"  # Run from parent directory, e.g. ~/scripts/
    exit 1
fi

PROJECT_NAME=$1

# 1. Create and enter the project directory
mkdir -p "$PROJECT_NAME"
cd "$PROJECT_NAME" || exit

# 2. Initialize Git
git init

# 3. Create a standard .gitignore for Python
cat <<EOF > .gitignore
__pycache__/
*.py[cod]
*$py.class
.venv/
venv/
ENV/
build/
dist/
*.egg-info/
.env
EOF

# 4. Create the virtual environment
python3 -m venv .venv

# 5. Create project files
echo "# $PROJECT_NAME" > README.md
touch "$PROJECT_NAME.py"
chmod +x "$PROJECT_NAME.py"

cat <<EOF > requirements.txt
# Add your project dependencies here (one per line).
# pip install -r requirements.txt
EOF

# 6. Final Status Report
echo "----------------------------------------"
echo "Project '$PROJECT_NAME' initialized."
echo "Python Version: $(./.venv/bin/python --version)"
echo "Next Step: cd $PROJECT_NAME && source .venv/bin/activate"
echo "----------------------------------------"
