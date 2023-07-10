#!/bin/bash

threshold=60  # Set the threshold percentage

# Get the root partition usage and percentage
usage=$(df -TH / | awk 'NR==2 {print $6}')
percentage=$(df -TH / | awk 'NR==2 {print $6}' | tr -d '%' | awk '{print int($1)}')

# Check if the percentage exceeds the threshold
if (( percentage > threshold )); then
	    echo "Warning: Disk usage on / ($usage) is over $threshold%."
	        # Add your notification method here (e.g., sending an email, triggering an alert, etc.)
	else
		    echo "Disk usage on / ($usage) is within the acceptable range."
fi

