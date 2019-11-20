#!/bin/bash

eval "$(ssh-agent -s)"

ssh-add - <<<$SSH_KEY 2>/dev/null
ssh -o StrictHostKeyChecking=no $HOST
