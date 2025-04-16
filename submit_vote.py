#!/usr/bin/env python3
import hashlib, json, sys
from datetime import datetime

ledger = 'TetraChain.json'
cred, vote_choice = sys.argv[1], sys.argv[2]
timestamp = datetime.utcnow().isoformat()
vote_hash = hashlib.sha256(f"{cred}{vote_choice}{timestamp}".encode()).hexdigest()

try:
    with open(ledger, 'r') as f:
        data = json.load(f)
except FileNotFoundError:
    data = []

data.append({'timestamp': timestamp, 'vote_hash': vote_hash, 'vote': vote_choice})

with open(ledger, 'w') as f:
    json.dump(data, f, indent=4)

print("Vote recorded.")
