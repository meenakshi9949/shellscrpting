#!/bin/bash

FRUITS=("Apple" "Banana" "Mango")

echo "First value: ${FRUITS[0]}"

echo "Second value: ${FRUITS[1]}"

echo "Second value: ${FRUITS[2]}"

# shellcheck disable=SC2145
echo "All Fruits: ${FRUITS[@]}"
