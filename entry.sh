#!/bin/sh

# Ensure the script exits on error
set -e

# Run the Python script with the specified arguments
python deepGenPro.py \
  --cloth_dir=./data/model_1/cloth_1/ \
  --model_dir=./data/model_1/model_info/ \
  --cloth_sleeve=short \
  --output_dir=./output/
