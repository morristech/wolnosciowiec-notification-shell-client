#!/bin/bash

BIN_DIR="$( cd $(dirname "${BASH_SOURCE[0]}") && pwd )/bin"

ln -s $BIN_DIR/notification* /usr/local/bin/
