#!/bin/bash
# ubuntu update.
if ! [$(id -u) = 0]; then
    echo "execute ubuntu update."
    sudo apt update
    exit 1
fi