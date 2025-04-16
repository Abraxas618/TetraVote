#!/bin/bash
echo "🧠 Codex CLI Walkthrough – Sovereign Voting Demo"

echo -e "\n[1/3] Generating Voter Credential..."
python3 generate_credential.py 12345 testsecret

echo -e "\n[2/3] Submitting Vote as Anonymous Voter..."
python3 submit_vote.py 8d293a54fac58d67bd7ae3c13be720e5235961401771636628ee8c6b8e731692 YES

echo -e "\n[3/3] Auditing the Ledger..."
python3 audit_votes.py

echo -e "\n✅ Codex Voting Prototype Complete"
