#!/bin/bash

# Syntax
# echo -n 'secret to encode' | base64
echo -n 'mysql' | base64            # bXlzcWw=
echo -n 'root' | base64             # cm9vdA==
echo -n 'password' | base64         # cGFzc3dvcmQ=