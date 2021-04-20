#!/bin/bash
set -xeu

./target/debug/substrate-relay init-bridge RococoToWestend \
	--source-host 127.0.0.1 \
	--source-port 9955 \
	--target-host 127.0.0.1 \
	--target-port 9944 \
	--target-signer //Eve

RUST_LOG=rpc=trace,bridge=trace ./target/debug/substrate-relay relay-headers RococoToWestend \
	--source-host 127.0.0.1 \
	--source-port 9955 \
	--target-host 127.0.0.1 \
	--target-port 9944 \
	--target-signer //Bob \
	--prometheus-host=0.0.0.0 \
