#!/bin/bash
set -euo pipefail

# FrostAlphaBuild / FINP Deploy Script
# Deploys the static demo to Surge.sh
# Usage: ./deploy.sh [domain]

DOMAIN="${1:-frostalphabuild.surge.sh}"
PROJECT_DIR="${PROJECT_DIR:-.}"

echo "🚀 Deploying FrostAlphaBuild (FINP) to $DOMAIN ..."

# Install Surge if missing (Node-based)
if ! command -v surge &> /dev/null; then
    echo "Installing surge CLI..."
    npm install -g surge
fi

# Optional: build step if you add a bundler later (Vite, Parcel, etc.)
# npm run build

echo "Deploying static site..."
surge --project "$PROJECT_DIR" --domain "$DOMAIN" ${SURGE_TOKEN:+--token "$SURGE_TOKEN"}

echo "✅ Deployed to https://$DOMAIN"
echo "   Cherry's Eyes + Grayson's Wallet demo updated."