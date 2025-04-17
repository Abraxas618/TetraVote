
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

## TetraCodex: Final Combination of the components listed below.

License: Apache 2.0.

Description: TetraCodex serves as the core foundation for TetraNexus, integrating multiple cryptographic protocols for sovereign, quantum-safe communication. It uses elements of post-quantum cryptography and decentralized networks to provide a secure and resilient infrastructure.

TetraCrypt-PQC-Nexus: License: Apache 2.0.

Description: This project is a post-quantum encryption system based on hyperdimensional Platonic geometry. It includes Tetrahedral Key Exchange, Quantum Dodecahedral Encryption, and Recursive Tesseract Hashing (RTH) for secure communications in quantum environments.

TetraYggdrasil_Nexus: License: MIT.

Description: This component focuses on post-quantum communication, specifically zk-STARK Authentication and WASM-Optimized P2P Mesh Networking using Yggdrasil. It enables decentralized, peer-to-peer communication while ensuring quantum-safe standards.

TetraCrypt_Yggdrasil_Unified: License: MIT.

Description: A unified communication framework built on TetraCrypt-PQC-Nexus and TetraYggdrasil_Nexus, combining zk-STARK authentication and WASM-optimized mesh networking for quantum-safe communications.

TetraNexus: License: Apache 2.0.

Description: The centralized network that combines all the aforementioned components. It provides a sovereign quantum-safe network, using zkSNARKs, Poseidon hashing, recursive tesseract hashing (RTH), and Platonic geometry (QIDL) for secure, decentralized quantum-safe communication.

TetraVote: License: MIT.

Description: A sovereign voting framework built on TetraCodex, TetraCrypt-PQC-Nexus, and TetraNexus. It enables tamper-proof elections for Indigenous nations, ensuring quantum-safe encryption in the democratic process.

How These Projects Connect: TetraCodex is the foundation that integrates the features of TetraCrypt-PQC-Nexus, TetraYggdrasil_Nexus, TetraCrypt_Yggdrasil_Unified, TetraNexus, and TetraVote.

TetraCrypt-PQC-Nexus provides quantum-safe encryption methods, which are used in TetraCodex and TetraNexus.

TetraYggdrasil_Nexus offers the decentralized communication framework, which is integrated into TetraCodex for secure P2P communication.

TetraCrypt_Yggdrasil_Unified brings the mesh networking and quantum-safe authentication that combine with the other components to create a full-stack solution.

TetraVote is a subset of TetraCodex, focusing on sovereign voting systems based on quantum-safe principles and cryptography.

Licensing Clarifications: TetraCodex, TetraNexus, and TetraCrypt-PQC-Nexus are under Apache 2.0, making them compatible for enterprise and commercial use.

TetraYggdrasil_Nexus and TetraCrypt_Yggdrasil_Unified are under MIT, offering flexibility for community-driven projects and open-source contributions.
