#!/usr/bin/env bash

export STAGING_DIR=/home/sim/Downloads/OpenWrt-SDK/staging_dir
export PATH=$PATH:$STAGING_DIR/toolchain/bin

./b2 toolset=gcc-arm target-os=linux threading=multi
