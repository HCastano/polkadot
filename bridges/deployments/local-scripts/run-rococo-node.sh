#!/bin/bash

# Run a development instance of the Rococo Substrate bridge node.
# To override the default port just export ROCOCO_PORT=9944

ROCOCO_PORT="${ROCOCO_PORT:-9955}"

RUST_LOG=runtime=trace,runtime::bridge=trace \
./target/debug/polkadot --chain=rococo-local --alice --tmp \
    --rpc-cors=all --unsafe-rpc-external --unsafe-ws-external \
    --port 33044 --rpc-port 9934 --ws-port $ROCOCO_PORT \
