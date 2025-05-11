#!/usr/bin/env python3
import json

ledger = 'TetraChain.json'
try:
    with open(ledger, 'r') as f:
        votes = json.load(f)
except FileNotFoundError:
    votes = []

print(f"Total votes: {len(votes)}")
for vote in votes:
    print(vote)
