#!/bin/bash

cd $(dirname "${BASH_SOURCE[0]}")
BIN_DIR="$(pwd)/bin"

ln -s $BIN_DIR/notification* /usr/local/bin/
