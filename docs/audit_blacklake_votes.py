#!/usr/bin/env python3
import json
from collections import Counter
from datetime import datetime

ledger_path = "TetraChain_BlackLake_Simulated.json"

try:
    with open(ledger_path, 'r') as f:
        ledger = json.load(f)
except FileNotFoundError:
    print("Ledger file not found.")
    exit(1)

print(f"Total Votes: {len(ledger)}")

vote_counts = Counter(entry['vote'] for entry in ledger)
for vote, count in vote_counts.items():
    print(f"{vote}: {count}")

first_ts = ledger[0]['timestamp']
last_ts = ledger[-1]['timestamp']
print(f"Voting Start: {first_ts}")
print(f"Voting End:   {last_ts}")
