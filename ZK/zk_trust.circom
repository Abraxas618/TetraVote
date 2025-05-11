pragma circom 2.0.0;

include "circomlib/circuits/poseidon.circom";

template zk_trust() {
    // Public Inputs
    signal input credential_hash;
    signal input vote_encrypted;
    signal input prev_hash;

    // Output commitment hash
    signal output commitment;

    // Poseidon commitment = Poseidon([credential_hash, vote_encrypted, prev_hash])
    component poseidon = Poseidon(3);
    poseidon.inputs[0] <== credential_hash;
    poseidon.inputs[1] <== vote_encrypted;
    poseidon.inputs[2] <== prev_hash;

    commitment <== poseidon.out;
}

component main = zk_trust();
