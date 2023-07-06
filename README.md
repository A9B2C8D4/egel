# Explaining Graph Neural Networks with Class Expressions in EL
## Abstract
GNNs lack explainability, particularly when it comes to understanding their behavior at global level. Our objective is to provide explanations for GNNs at this global level, unraveling the important inputs required for the model to assign specific labels. To achieve this, we employ class expressions, commonly used in knowledge graph reasoning. This approach is especially beneficial for graphs with diverse node types, where class expressions exhibit their full potential. Through a simple example, we demonstrate the effectiveness of our approach and shed light on the generated class expressions. These results highlight the potential of our method in enhancing GNN interpretability and inspire future research in explainable AI for graph structured data.

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

The results for the hetero-bashapes dataset are be stored in the folders `BA2hop` and `BA4hop` for the results of a GNN trained with 2 layers and 4 layers, respectively. For all graphs, a pdf with the ending "_wo_text" exists, this is the corresponding graph without text.



There is a long runtime for the DBLP dataset (1-2 days). Set run_DBLP="False" or iterations to a lower number to get results faster.


## Structure of Code

The code generated the hetero-bashapes dataset and downloads the DBLP dataset, trains GNNs on top of these and produces class expressions and graphs as global explanations for labels of these datasets.


`main.py` File for running everything and visualizing results

`ce_generation.py` File with functions for generating class expressions

`graph_generation.py` File with functions for generating graphs from Class Expressions

`bashapes_hetero.py` File for generating the hetero BAShapes dataset

`bashapes_model.py` File with the training of the GNN for the BaShapes dataset

## Parameters to set in .sh file


run_DBLP="True" if the DBLP Dataset should be evaluated

run_BAShapes="True" if the hetero-BAShapes Dataset should be evaluated

random_seed=1 to choose a random seed

iterations=1000 The number of Class Expressions created and tested.
