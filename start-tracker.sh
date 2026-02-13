#!/bin/bash

# MJ Card Tracker - Quick Start Script
# This script starts a local web server for the card tracker

echo "🏀 Michael Jordan Card Tracker - Quick Start"
echo "=============================================="
echo ""

# Check if we're in the right directory
if [ ! -f "index.html" ]; then
    echo "❌ Error: index.html not found in current directory"
    echo ""
    echo "Please run this script from the folder containing:"
    echo "  - index.html"
    echo "  - jordan_cards_database.json"
    echo ""
    exit 1
fi

if [ ! -f "jordan_cards_database.json" ]; then
    echo "⚠️  Warning: jordan_cards_database.json not found"
    echo "   The tracker will work but only with 12 sample cards"
    echo ""
fi

echo "✓ Files found!"
echo ""

# Check for Python
if command -v python3 &> /dev/null; then
    PYTHON_CMD="python3"
elif command -v python &> /dev/null; then
    PYTHON_CMD="python"
else
    echo "❌ Python not found. Please install Python to run the server."
    exit 1
fi

echo "Starting web server on http://localhost:8000"
echo ""
echo "📂 Server will serve files from: $(pwd)"
echo ""
echo "🌐 Open your browser to:"
echo "   http://localhost:8000/"
echo "   (or http://localhost:8000/index.html)"
echo ""
echo "Press Ctrl+C to stop the server"
echo "=============================================="
echo ""

# Start the server
$PYTHON_CMD -m http.server 8000
