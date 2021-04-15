#!/bin/bash
set -xeu

./target/debug/substrate-relay init-bridge WestendToRococo \
	--source-host 127.0.0.1 \
	--source-port 9944 \
	--target-host 127.0.0.1 \
	--target-port 9955 \
	--target-signer //Dave

./target/debug/substrate-relay init-bridge RococoToWestend \
	--source-host 127.0.0.1 \
	--source-port 9955 \
	--target-host 127.0.0.1 \
	--target-port 9944 \
	--target-signer //Eve

# /home/user/substrate-relay relay-headers-and-messages millau-rialto \
# 	--millau-host  127.0.0.1\
# 	--millau-port 9944 \
# 	--millau-signer //Charlie \
# 	--rialto-host 127.0.0.1 \
# 	--rialto-port 9944 \
# 	--rialto-signer //Charlie \
# 	--lane=00000000 \
# 	--prometheus-host=0.0.0.0
