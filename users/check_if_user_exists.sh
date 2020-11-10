#!/bin/bash
# TODO match condition is too easily met
getent passwd | grep -q $1 && echo "user $1 found" || echo "user $1 not found"
