#!/bin/sh

# copy the certificate files to the local share
sudo cp 'winhome/.certificates/'* /usr/local/share/ca-certificates/
# update the certificate store
sudo update-ca-certificates
