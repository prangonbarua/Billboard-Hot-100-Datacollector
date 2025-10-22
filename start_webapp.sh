#!/bin/bash
# Start Billboard Hot 100 Web App

echo "Starting Billboard Hot 100 Chart Analyzer Web App..."
echo ""

# Check if virtual environment exists
if [ ! -d "venv" ]; then
    echo "Creating virtual environment..."
    python3 -m venv venv
fi

# Activate virtual environment
source venv/bin/activate

# Install dependencies
echo "Installing dependencies..."
pip install -q -r requirements.txt

# Start the Flask app
python3 app.py
