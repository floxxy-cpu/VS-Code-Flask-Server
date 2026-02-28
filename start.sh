#!/bin/bash

# Install code-server without su/root
curl -fsSL https://code-server.dev/install.sh | sh -s -- --method standalone --prefix /tmp/code-server

# Start Flask in the background
python3 app.py &

# Start code-server as main process
/tmp/code-server/bin/code-server --bind-addr 0.0.0.0:$PORT --auth password --disable-telemetry /root
