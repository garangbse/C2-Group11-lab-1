#!/bin/bash

# Adjust path
cd "$(dirname "$0")"

# Extract top 10 highest temperatures assuming Temperature
sort -t"," -k3 -rn raw_data/satelite_temperature_data.csv | head -n11 > analyzed_data/highest_temp.csv 

# Example extraction for South Africa
awk 'BEGIN{FS=","} $1=="South Africa" {print $0}' raw_data/satelite_temperature_data.csv | sort -t"," -k4,4rn > analyzed_data/humidity_data_South_Africa.csv 

echo "Extraction completed."
