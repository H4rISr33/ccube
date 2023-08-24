#!/bin/bash

# Read the contents of users.txt into an array
user_ids=($(cat users.txt))

# Initialize counters for each kingdom
kishkindha_count=0
madra_count=0
usinara_count=0
heheya_count=0

# Loop through the array of User IDs
for user_id in "${user_ids[@]}"; do
    case "$user_id" in
        553)
            ((kishkindha_count++))
            ;;
        828)
            ((madra_count++))
            ;;
        723)
            ((usinara_count++))
            ;;
        698)
            ((heheya_count++))
            ;;
    esac
done

# Calculate the total count of User IDs
total_count=$((kishkindha_count + madra_count + usinara_count + heheya_count))

# Print the total count of User IDs
echo "Total count of USER IDs are: $total_count"
