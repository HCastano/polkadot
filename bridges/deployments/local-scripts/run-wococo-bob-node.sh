#!/bin/bash

# Run a development instance of the Rococo Substrate bridge node.
# To override the default port just export ROCOCO_PORT=9955
#
# Note: This script will not work out of the box with the bridges
# repo since it relies on a Polkadot binary.

WOCOCO_PORT="${WOCOCO_PORT:-9922}"

RUST_LOG=runtime=trace,runtime::bridge=trace \
./target/debug/polkadot --chain=wococo-local --bob --tmp \
    --rpc-cors=all --unsafe-rpc-external --unsafe-ws-external \
    --port 33022 --rpc-port 9932 --ws-port $WOCOCO_PORT \
