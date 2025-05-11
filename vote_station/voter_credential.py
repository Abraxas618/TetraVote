#!/usr/bin/env python3
import hashlib, sys
from datetime import datetime

band_id, secret = sys.argv[1], sys.argv[2]
timestamp = datetime.utcnow().isoformat()
hash_input = f"{band_id}{secret}{timestamp}".encode()
credential = hashlib.shake_256(hash_input).hexdigest(32)
print(f"Credential: {credential}\nTimestamp: {timestamp}")
