#!/bin/bash
set -e

echo "🔍 Checking zk-SNARK environment..."

# Expected files
FILES=(
  "ZK/zk_trust_js/zk_trust.wasm"
  "ZK/zk_trust_js/generate_witness.js"
  "ZK/input.json"
  "ZK/zk_trust.r1cs"
  "ZK/zk_trust.zkey"
  "ZK/verification_key.json"
)

for FILE in "${FILES[@]}"; do
  if [ ! -f "$FILE" ]; then
    echo "❌ Missing file: $FILE"
    exit 1
  else
    echo "✅ Found: $FILE"
  fi
done

# Check that input.json does not contain legacy keys
if grep -q "user_entropy" ZK/input.json; then
  echo "❌ Detected legacy signal 'user_entropy' in input.json"
  exit 1
fi

# Check wasm does not contain legacy signals
if strings ZK/zk_trust_js/zk_trust.wasm | grep -q "user_entropy"; then
  echo "❌ Detected legacy signal 'user_entropy' in zk_trust.wasm"
  exit 1
fi

# Optional: Attempt proof verification
echo "🧪 Verifying zk-SNARK proof (if exists)..."
if [ -f ZK/witness.wtns ]; then
  snarkjs groth16 prove ZK/zk_trust.zkey ZK/witness.wtns ZK/proof.json ZK/public.json
  snarkjs groth16 verify ZK/verification_key.json ZK/public.json ZK/proof.json
  echo "✅ zk-SNARK proof verified!"
else
  echo "⚠️ witness.wtns not found. Skipping proof verification."
fi

echo -e "\n🛡️ zk environment integrity check complete."
