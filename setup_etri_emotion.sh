#!/bin/bash

ENV_NAME="etri-emotion"

echo "✅ Creating conda environment: $ENV_NAME ..."
conda create -y -n $ENV_NAME python=3.10

echo "✅ Activating environment..."
source $(conda info --base)/etc/profile.d/conda.sh
conda activate $ENV_NAME

echo "📦 Installing packages from requirements.txt..."
pip install -r requirements.txt

echo "✅ Installation completed! To activate:"
echo "conda activate $ENV_NAME"
