
# Codex Prototype Submission to University of Saskatchewan (UofS) - SK-NEIHR Spring Institute 2025

## Developer
Michael Tass MacDonald  
Independent Dënesųłiné Technologist  
Treaty 8 Territory (Stony Rapids, SK)  
Email: tassalphonse@gmail.com  
GitHub: https://github.com/Abraxas618  
Documentation: https://tetracodex.readthedocs.io  

## Overview
Codex is a sovereign, zero-knowledge, post-quantum cryptographic framework designed specifically for Indigenous governance and data sovereignty. This prototype demonstrates a working implementation for secure, transparent, and tamper-proof elections within First Nations communities.

## Included Files
- `generate_credential.py`: Generates anonymous, zero-knowledge credentials for voters.
- `submit_vote.py`: Allows voters to securely submit votes using ZK credentials.
- `audit_votes.py`: Provides transparent auditing capability without compromising voter anonymity.
- `TetraChain.json`: Ledger file to store vote hashes securely (auto-generated).

## Requirements
- Python 3.7+

## Setup & Usage

### Step 1: Generate Voter Credential
Run the script providing a Band ID and a personal secret:

```bash
./generate_credential.py [band_id] [secret]
```

### Step 2: Submit Vote
Submit a vote anonymously using the credential hash generated:

```bash
./submit_vote.py [credential_hash] [vote_choice]
```

### Step 3: Audit Votes
Audit all votes submitted to ensure transparency and integrity:

```bash
./audit_votes.py
```

## Features
- **Zero-Knowledge Proofs:** Ensures voter privacy and eliminates double voting.
- **Decentralized & Sovereign:** No central server or external dependencies.
- **Tamper-Proof Ledger:** Votes are cryptographically secured.
- **Offline Operation:** Ideal for remote, air-gapped communities.

## Application
Ideal for:
- Chief & Council elections
- Referendums & community decisions
- Indigenous-led governance and data sovereignty

Thank you for considering this innovative Indigenous solution for the SK-NEIHR Spring Institute.

---

Michael Tass MacDonald, 2025
