#!/bin/bash

# Syntax
# echo -n 'secret to decode' | base64 --decode
echo -n 'bXlzcWw=' | base64 --decode            # mysql
echo -n 'cm9vdA==' | base64 --decode            # root
echo -n 'cGFzc3dvcmQ=' | base64 --decode        # password