
# 🛠️ TetraVote Installation & Usage Guide

## 📦 Requirements

- Python 3.7 or newer
- Git (optional, for cloning)
- No internet or dependencies required — fully offline capable

---

## 📁 Folder Structure

```
TetraVote/
├── generate_credential.py
├── submit_vote.py
├── audit_votes.py
├── audit_blacklake_votes.py
├── TetraChain.json
├── TetraChain_BlackLake_Simulated.json
├── codex_demo_walkthrough.sh
```

---

## 🧰 Step-by-Step CLI Usage

### 1. Generate a Credential

```bash
python3 generate_credential.py <band_id> <secret_phrase>
```

📥 Output:
- A SHAKE256 credential hash
- A UTC timestamp

🔒 Example:
```bash
python3 generate_credential.py 224-001 myvote2025
```

---

### 2. Submit a Vote

```bash
python3 submit_vote.py <credential_hash> <vote>
```

✅ Valid options: `YES`, `NO`, or any referendum string

🔒 Example:
```bash
python3 submit_vote.py e62bcafe... YES
```

---

### 3. Audit the Votes

```bash
python3 audit_votes.py
```

🧾 Displays:
- Total number of votes
- Vote breakdown by category
- Ledger entries with timestamps and vote hashes

---

### 🗳️ Optional: Black Lake Simulation Audit

```bash
python3 audit_blacklake_votes.py
```

---

## 💾 Resetting the Ledger

To clear votes (for a new trial):

```bash
echo "[]" > TetraChain.json
```

---

## 📩 Questions?

Built with sovereignty by Michael Tass MacDonald  
Email: tassalphonse@gmail.com  
Docs: https://tetracodex.readthedocs.io
