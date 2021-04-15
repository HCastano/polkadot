#!/bin/bash

# Run a development instance of the Rococo Substrate bridge node.
# To override the default port just export ROCOCO_PORT=9944

ROCOCO_BOB_PORT="${ROCOCO_BOB_PORT:-9966}"

RUST_LOG=runtime=trace,runtime::bridge=trace \
./target/debug/polkadot --chain=rococo-local --bob --tmp \
    --rpc-cors=all --unsafe-rpc-external --unsafe-ws-external \
    --port 33055 --rpc-port 9935 --ws-port $ROCOCO_BOB_PORT \
