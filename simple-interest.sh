#!/bin/bash

#
# A simple script to calculate simple interest.
#

# Prompt user for input
echo "--- Simple Interest Calculator ---"
read -p "Enter the principal amount: " principal
read -p "Enter the annual rate of interest (%): " rate
read -p "Enter the time period in years: " time

# Calculation using bc for floating point math
# Formula: SI = (P * T * R) / 100
interest=$(echo "scale=2; $principal * $time * $rate / 100" | bc)

# Display the result
echo "------------------------------------"
echo "The calculated simple interest is: $interest"
