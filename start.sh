#!/bin/bash

# Install code-server
curl -fsSL https://code-server.dev/install.sh | sh

# Install Flask
pip install -r requirements.txt

# Start Flask in the background on port 8080
python3 app.py &

# code-server as main process on Render's public port
code-server --bind-addr 0.0.0.0:$PORT --auth password --disable-telemetry /root
