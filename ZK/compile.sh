#!/bin/bash
set -e

# Navigate to script directory
cd "$(dirname "$0")"

CIRCUIT=${1:-zk_trust}
PTAU=powersOfTau28_hez_final_12.ptau

echo "🧹 Cleaning old build artifacts..."
rm -rf ${CIRCUIT}_js ${CIRCUIT}.r1cs ${CIRCUIT}.sym witness.wtns


# 🔧 Step 1: Compile circuit
echo "🔧 Compiling circuit..."
circom $CIRCUIT.circom --r1cs --wasm --sym -l ./circomlib/circuits

# 🔐 Step 2: Trusted setup
if [ ! -f "$PTAU" ]; then
  echo "⚠️ Missing $PTAU file. Please provide a valid ptau file."
  exit 1
fi

echo "🔐 Running trusted setup..."
snarkjs groth16 setup $CIRCUIT.r1cs $PTAU $CIRCUIT.zkey

# 🔑 Step 3: Export verification key
echo "🔑 Exporting verification key..."
snarkjs zkey export verificationkey $CIRCUIT.zkey verification_key.json

# 📥 Step 4: Ensure input.json exists
if [ ! -f "input.json" ]; then
  echo "⚠️ input.json not found. Creating default test input..."
  echo '{ "credential_hash": 123456789, "vote_encrypted": 987654321, "prev_hash": 111111 }' > input.json
fi

# 🧠 Step 5: Generate witness
echo "🧠 Generating witness..."
node ${CIRCUIT}_js/generate_witness.js ${CIRCUIT}_js/${CIRCUIT}.wasm input.json witness.wtns

# 📜 Step 6: Generate proof
echo "📜 Creating proof..."
snarkjs groth16 prove $CIRCUIT.zkey witness.wtns proof.json public.json

# ✅ Step 7: Verify proof
echo "✅ Verifying proof..."
snarkjs groth16 verify verification_key.json public.json proof.json

echo -e "\\n\\033[1;32m🚀 zkSNARK proof pipeline complete for $CIRCUIT ✅\\033[0m"
