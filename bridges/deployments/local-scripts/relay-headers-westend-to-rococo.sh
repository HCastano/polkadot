#!/bin/bash
set -xeu

./target/debug/substrate-relay init-bridge WestendToRococo \
	--source-host 127.0.0.1 \
	--source-port 9944 \
	--target-host 127.0.0.1 \
	--target-port 9955 \
	--target-signer //Dave

RUST_LOG=rpc=trace,bridge=trace ./target/debug/substrate-relay relay-headers WestendToRococo \
	--source-host 127.0.0.1 \
	--source-port 9944 \
	--target-host 127.0.0.1 \
	--target-port 9955 \
	--target-signer //Charlie \
	--prometheus-host=0.0.0.0 \
