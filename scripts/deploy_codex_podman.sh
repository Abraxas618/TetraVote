#!/bin/bash

# Codex Sovereign Voting System - Podman Deployment Script
# Author: Michael Tass MacDonald (Treaty 8 / Dënesųłiné)
# Version: 1.0
# Date: April 16, 2025

echo "[*] Starting Codex deployment via Podman..."

# Step 1: Build the container image
echo "[*] Building container from local Dockerfile or Python app"
podman build -t codex-voting .

# Step 2: Create volume for vote ledger persistence
echo "[*] Creating persistent volume for vote data"
podman volume create codex-ledger-data

# Step 3: Run Codex container
echo "[*] Launching Codex container"
podman run -d --name codex-node \
    -v codex-ledger-data:/app/ledger \
    -p 5000:5000 \
    codex-voting

echo "[*] Codex node running at http://localhost:5000"
echo "[*] Ledger stored in Podman volume 'codex-ledger-data'"
echo "[*] Use CTRL+C to stop or 'podman stop codex-node' to terminate."

# Step 4: Monitor logs (optional)
# podman logs -f codex-node
