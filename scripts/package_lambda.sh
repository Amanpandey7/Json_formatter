#!/bin/bash

set -e  # Exit immediately if a command exits with a non-zero status

LAMBDA_DIR="lambda"
ZIP_FILE="lambda_function.zip"

echo "Packaging Lambda function from $LAMBDA_DIR"

# Clean old zip if exists
if [ -f "$LAMBDA_DIR/$ZIP_FILE" ]; then
    rm "$LAMBDA_DIR/$ZIP_FILE"
fi

# Navigate to Lambda folder
cd "$LAMBDA_DIR"

# Install dependencies locally
if [ -f requirements.txt ]; then
    echo "Installing dependencies..."
    pip install -r requirements.txt -t .
fi

# Zip all contents (dependencies + main.py)
echo "Creating zip package..."
zip -r "$ZIP_FILE" . > /dev/null

cd -

echo "Lambda package created at $LAMBDA_DIR/$ZIP_FILE"
