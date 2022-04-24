#!/bin/bash

eval "yarn"
# yes doing this because preferable to submodule update
eval "forge install"

# same here
for lib in lib/*; do
	eval "forge update $lib"
done

eval "forge build"
