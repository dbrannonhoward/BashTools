#!/bin/bash
echo "executing p2 filter"
./p2_builtin_filter.py
echo "executing p3 filter"
./p3_builtin_filter.py

echo "executing p2 map"
./p2_builtin_map.py
echo "executing p3 map"
./p3_builtin_map.py

echo "executing p2 zip"
./p2_builtin_zip.py
echo "executing p3 zip"
./p3_builtin_zip.py
