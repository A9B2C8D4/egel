# Paper titel

## Installation
using: Ubuntu 22.04 LTS:
```
git clone https://github.com/A9B2C8D4/egel.git

conda env create -f environment.yml

conda activate egel
```
## Reproduce Results

Run the Shell `./run_egel.sh`



The plots will be saved to the `content/plots` folder. Each plot provides its Class Expression, fidelity, accuracy and F1-measure directly on the PDF. 
There is a long runtime for the DBLP dataset (1-2 days). Set run_DBLP="False" or iterations to a lower number to get results faster.


## Structure of Code

main.py: File for running everything and visualizing results

ce_generation.py: File with functions for generating class expressions

graph_generation.py: File with functions for generating graphs from Class Expressions

BaShapes_Hetero.py: File for generating the hetero BAShapes dataset

BaShapes_Model.py: File with the training of the GNN for the BaShapes dataset

## Parameters to set in .sh file


run_DBLP="True" if the DBLP Dataset should be evaluated

run_BAShapes="True" if the hetero BAShapes Dataset should be evaluated

random_seed=1 to choose a random seed

iterations=1000 The number of Class Expressions created and tested.
