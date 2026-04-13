#!/usr/bin/env bash

# Check if a project name was provided
if [ -z "$1" ]; then
    echo "Usage: pystart <project_name>"  # Run from parent directory, e.g. ~/scripts/
    exit 1
fi

PROJECT_NAME=$1

# Create and enter the project directory
mkdir -p "$PROJECT_NAME"
cd "$PROJECT_NAME" || exit

# Initialize Git
git init

# Create a standard .gitignore for Python
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

# Create the virtual environment
python3 -m venv .venv

# Create project files
echo "# $PROJECT_NAME" > README.md
cat <<EOF >  "$PROJECT_NAME.py"
#!/usr/bin/env python3
EOF
chmod +x "$PROJECT_NAME.py"

cat <<EOF > requirements.txt
# Add your project dependencies here (one per line).
# pip install -r requirements.txt
EOF

# Final Status Report
echo "----------------------------------------"
echo "Project '$PROJECT_NAME' initialized."
echo "Python Version: $(./.venv/bin/python --version)"
echo "Next Step: cd $PROJECT_NAME && source .venv/bin/activate"
echo "To deactivate virtual environment when done: deactivate"
echo "To reactivate virtual environment when returning to the project: source .venv/bin/activate"
echo "----------------------------------------"
