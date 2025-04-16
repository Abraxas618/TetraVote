# Codex Prototype Submission to University of Saskatchewan (UofS) - SK-NEIHR Spring Institute 2025

## Developer
Michael Tass MacDonald  
Independent Dënesųłiné Technologist  
Treaty 8 Territory (Stony Rapids, SK)  
Email: tassalphonse@gmail.com  
GitHub: https://github.com/Abraxas618  
Documentation: https://tetracodex.readthedocs.io  
Medium Article: https://medium.com/@tassalphonse/reclaiming-the-ballot-how-codex-enables-sovereign-tamper-proof-voting-for-indigenous-nations-ed4cabe7eab7  
Read the Codex Treaty 8 Manifesto — a call to action for youth across the North.
---

## Overview
Codex is a sovereign, zero-knowledge, post-quantum cryptographic framework designed specifically for Indigenous governance and data sovereignty.  
This prototype demonstrates a working implementation for secure, transparent, and tamper-proof elections within First Nations communities.

---

## Included Files
- `generate_credential.py`: Generates anonymous, zero-knowledge credentials for voters.
- `submit_vote.py`: Allows voters to securely submit votes using ZK credentials.
- `audit_votes.py`: Provides transparent auditing capability without compromising voter anonymity.
- `TetraChain.json`: Ledger file to store vote hashes securely (auto-generated).
- `scripts/deploy_codex_podman.sh`: Podman-based container deployment script.

---

## Requirements
- Python 3.7+
- Optional: Podman (for container-based deployment)

---

## Setup & Usage

### Step 1: Generate Voter Credential
Run the script providing a Band ID and a personal secret:

```bash
python3 generate_credential.py [band_id] [secret]
```

### Step 2: Submit Vote
Submit a vote anonymously using the credential hash generated:

```bash
python3 submit_vote.py [credential_hash] [vote_choice]
```

### Step 3: Audit Votes
Audit all votes submitted to ensure transparency and integrity:

```bash
python3 audit_votes.py
```

---

## Features
- ✅ Zero-Knowledge Proofs (Groth16/STARK): Ensures privacy, uniqueness, and verifiability.
- ✅ Decentralized & Sovereign: No cloud, no central authority.
- ✅ Tamper-Proof Ledger: Cryptographically secure vote history.
- ✅ Offline Operation: Supports USB/air-gapped deployment.

---

## Application
Ideal for:
- Chief & Council elections
- Referendums & community governance
- Métis and Urban Indigenous advisory elections
- Indigenous self-determined data sovereignty initiatives

---

## 🔧 Deployment with Podman

You can deploy Codex as a secure offline container using Podman:

```bash
chmod +x scripts/deploy_codex_podman.sh
./scripts/deploy_codex_podman.sh
```

This will:
- Build the container from source
- Mount a persistent volume for TetraChain vote ledger
- Run the node locally at `http://localhost:5000`

---

Thank you for considering this innovative Indigenous solution for the SK-NEIHR Spring Institute.

May our elections be as sacred as our voices.  
- Michael Tass MacDonald (Abraxas618)
