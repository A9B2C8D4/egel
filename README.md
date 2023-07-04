# INSTALLATION
using: Ubuntu 22.04 LTS:

git clone https://github.com/A9B2C8D4/egel.git
conda env create -n egel python=3.8 && conda activate egel

# Retrieve Results

Run: Shell (not implemented yet)
The plots will be saved to the content-plots folder. Each Plot provides its Class Expression, fidelity, accuracy and F1-measure directly on the PDF.


# Structure of Code
main.py: File for running everything and visualizing results
ce_generation.py: File with functions for generating class expressions
graph_generation.py: File with functions for generating graphs from Class Expressions
BaShapes_Hetero.py: File for generating the hetero BAShapes dataset
BaShapes_Model.py: File with the training of the GNN for the BaShapes dataset


# Get all Results:
run shell ...
retrieve pdfs, with the pictures from the dataset

set seed = ...., to generate different results
