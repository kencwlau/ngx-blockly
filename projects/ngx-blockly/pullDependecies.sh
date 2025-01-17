#!/usr/bin/env bash

export BLOCKLY_VERSION="1.20190419.0"

rm -rf ./src/scripts/blockly/

wget -O blockly.zip  https://github.com/google/blockly/archive/$BLOCKLY_VERSION.zip \
            && unzip blockly.zip -d ./src/scripts/ \
            && mv ./src/scripts/blockly-$BLOCKLY_VERSION ./src/scripts/blockly \
            && rm -rf blockly.zip ./src/scripts/blockly/demos ./src/scripts/blockly/tests

