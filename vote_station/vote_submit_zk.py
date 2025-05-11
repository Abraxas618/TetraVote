#!/usr/bin/env python3
import hashlib
import json
import sys
import subprocess
from datetime import datetime
from pathlib import Path

# === Inputs ===
ledger_path = 'TetraChain.json'
zk_dir = 'ZK'
cred, vote_choice = sys.argv[1], sys.argv[2]
timestamp = datetime.utcnow().isoformat()
vote_hash = hashlib.sha256(f"{cred}{vote_choice}{timestamp}".encode()).hexdigest()

# === Load or Init Ledger ===
ledger_data = []
if Path(ledger_path).exists():
    with open(ledger_path, 'r') as f:
        ledger_data = json.load(f)

# === Determine prev hash ===
prev_hash = hashlib.sha256(json.dumps(ledger_data[-1], sort_keys=True).encode()).hexdigest() if ledger_data else "0" * 64

# === QIDL Placeholder (mock encrypted vote) ===
qidl_vote = hashlib.sha256(f"{vote_choice}".encode()).hexdigest()

# === Generate zk-SNARK Input File ===
zk_input = {
    "credential_hash": int(hashlib.sha256(cred.encode()).hexdigest(), 16) % 21888242871839275222246405745257275088548364400416034343698204186575808495617,
    "vote_encrypted": int(qidl_vote, 16) % 21888242871839275222246405745257275088548364400416034343698204186575808495617,
    "prev_hash": int(prev_hash, 16) % 21888242871839275222246405745257275088548364400416034343698204186575808495617
}
with open(f"{zk_dir}/input.json", "w") as f:
    json.dump(zk_input, f)

# === Run snarkjs fullprove ===
try:
    subprocess.run([
        "snarkjs", "groth16", "fullprove",
        f"{zk_dir}/input.json",
        f"{zk_dir}/zk_trust_js/zk_trust.wasm",
        f"{zk_dir}/proving_key.zkey",
        f"{zk_dir}/proof.json",
        f"{zk_dir}/public.json"
    ], check=True)
except subprocess.CalledProcessError:
    print("[✗] ZK Proof generation failed.")
    sys.exit(1)

# === Verify Proof ===
verify = subprocess.run([
    "snarkjs", "groth16", "verify",
    f"{zk_dir}/verification_key.json",
    f"{zk_dir}/public.json",
    f"{zk_dir}/proof.json"
], capture_output=True, text=True)

if "OK" in verify.stdout:
    ledger_data.append({
        'timestamp': timestamp,
        'vote_hash': vote_hash,
        'vote': vote_choice
    })
    with open(ledger_path, 'w') as f:
        json.dump(ledger_data, f, indent=4)
    print("[✓] Vote recorded with zk-SNARK verification.")
else:
    print("[✗] ZK Proof verification failed. Vote not recorded.")
