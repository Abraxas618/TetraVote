
# TetraVote – Codex Prototype Submission to University of Saskatchewan (UofS)  
## SK-NEIHR Spring Institute 2025

---

## Developer

**Michael Tass MacDonald**  
Independent Dënesųłiné Technologist  
Treaty 8 Territory (Stony Rapids, SK)  
📧 tassalphonse@gmail.com  
🔗 GitHub: https://github.com/Abraxas618  
📖 Documentation: https://tetracodex.readthedocs.io  
📰 Medium Article: https://medium.com/@tassalphonse/reclaiming-the-ballot-how-codex-enables-sovereign-tamper-proof-voting-for-indigenous-nations-ed4cabe7eab7  
📜 Codex Treaty 8 Manifesto: A call to action for youth across the North

---

## 🧭 Overview

**TetraVote** is a zero-knowledge, post-quantum voting framework created to empower Indigenous nations with sovereign, tamper-proof, and transparent elections.  
It operates without reliance on cloud services or centralized infrastructure, enabling **air-gapped**, **offline**, and **containerized deployments**.

This prototype was proposed late to SK-NEIHR as a real-world application of Indigenous Data Sovereignty and secure digital governance using zero-trust mathematics.
I am not entrolled in any graduate studies but want to contribute to SK-NEIHR Vison of Indigenous Data Sovereignty I Currently have Grade 12 Self Taught Post-Quantum Cryptography with Zero Knowledge Proof, etc
---

## 📁 Included Files

| File                          | Description                                                      |
|-------------------------------|------------------------------------------------------------------|
| `generate_credential.py`     | Generates anonymous, ZK-backed voting credentials                |
| `submit_vote.py`             | Submits votes using zero-knowledge identity proofs               |
| `audit_votes.py`             | Audits election results without linking to voter identity        |
| `TetraChain.json`            | Encrypted local ledger file storing vote proofs (auto-generated) |
| `scripts/deploy_codex_podman.sh` | Deploys voting system as a Podman container for offline use |

---

## 🛠️ Requirements

- Python 3.7+
- (Optional) Podman for containerized deployment

---

## 🚀 How to Use

### Step 1: Generate Credential

```bash
python3 generate_credential.py [band_id] [personal_secret]
```

### Step 2: Submit Vote

```bash
python3 submit_vote.py [credential_hash] [vote_choice]
```

### Step 3: Audit Votes

```bash
python3 audit_votes.py
```

---

## 🔐 Features

- ✅ **Zero-Knowledge Proofs (Groth16/STARK)**: Cryptographic voter anonymity and uniqueness  
- ✅ **Post-Quantum Encryption**: Resistant to quantum computing attacks  
- ✅ **Offline Support**: Fully air-gappable using USB or local-only deployment  
- ✅ **Tamper-Proof Ledger**: Encrypted vote logs stored in `TetraChain.json`  
- ✅ **Transparent Audits**: View vote counts without revealing voter identity  

---

## 🧩 Application Context

Ideal for:
- Chief & Council elections
- Land Code Referendums
- Métis and Urban Indigenous advisory board elections
- Nation-wide sovereignty tech pilots
- Community-focused voting in areas with low infrastructure

---

## 🐧 Podman Deployment (Optional)

Run the entire TetraVote system as a container for secure, isolated deployment:

```bash
chmod +x scripts/deploy_codex_podman.sh
./scripts/deploy_codex_podman.sh
```

This will:
- Build from source
- Mount persistent storage for vote ledger
- Serve locally at `http://localhost:5000`

---

## 📄 License

MIT License — Open source and reusable for community, education, or government use.

---

## ✨ A Note from the Developer

> TetraVote was created in under 30 days as a proof that sovereign cryptography and Indigenous governance can walk side-by-side into the future.  
> It’s more than code — it’s a ceremony written in mathematics.  
>  
> May our elections be as sacred as our voices.  
>  
> — *Michael Tass MacDonald (Abraxas618)*
