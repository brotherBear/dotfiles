#!/bin/bash

# Add test for current virtual env?
pip-compile requirements.in
pip-compile dev-requirements.in
pip-sync requirements.txt dev-requirements.txt

exit
