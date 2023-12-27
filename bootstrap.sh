#!/bin/bash

# Clone configuration repo to user location
sudo git clone git@github.com:aarongpower/nixos-config.git ~/nixos-config

# Generate hardware-specific configuration
nixos-generate-config --dir ~/nixos-config

# Run sync of config and apply
source ~/nixos-config/sync.sh

