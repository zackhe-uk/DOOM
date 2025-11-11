#!/bin/bash

curl -Lo ./doom1.tar.gz "http://deb.debian.org/debian/pool/non-free/d/doom-wad-shareware/doom-wad-shareware_1.9.fixed.orig.tar.gz"
tar -xzf ./doom1.tar.gz

mv       ./doom-wad-shareware-1.9.fixed/doom1.wad .
rm -rf   ./doom-wad-shareware-1.9.fixed
rm       ./doom1.tar.gz
