#!/bin/bash

# List of all supported users
groupadd -g 1000 icecube 

# only icecubeprod really supported
useradd -u 1000 -g 1000 -s /bin/bash icecubeprod

# add a unprivileged icecube just in case
useradd -u 3001 -g 1000 -s /bin/bash icecube

