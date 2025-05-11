from Core.ledger import Ledger
import os

def launch_node():
    print("🚀 Launching TetraVote Sovereign Node Interface")
    chain_path = "ledger_chain.json"

    if os.path.exists(chain_path):
        ledger = Ledger(node_id="TetraVoteGenesis-Node")
        ledger.load_chain()
        print("✅ Ledger loaded:")
        for block in ledger.chain:
            print(f"⛓ Block: {block}")
    else:
        print("⚠️ No ledger found. Initializing empty chain.")
        ledger = Ledger(node_id="TetraVoteGenesis-Node")
        ledger.create_genesis_block()
        ledger.save_chain(chain_path)
        print("✅ New ledger initialized.")

if __name__ == "__main__":
    launch_node()
