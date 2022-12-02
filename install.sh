#!/bin/bash

if [[ $UID != 0 ]]; then
    echo "Cannot install passgen: Permission denied"
    exit 1
fi

if [[ $(cat installed) == 1 ]]; then
    echo "passgen is already installed on this system!"
    exit 1
fi

chmod +x src/passgen
sudo mv src/passgen /usr/bin/

echo 1 > installed