# Explaining Graph Neural Networks with Class Expressions in EL

## TL;DR
We explain graph neural networks using class expressions from description logic, which are found by generating graphs from them and averaging the GNN output.

## Abstract

Graph Neural Networks (GNNs) have emerged as powerful tools for node and graph classification on graph-structured data, but they lack explainability, particularly when it comes to understanding their behavior at global level. Current research mainly utilizes subgraphs of the input as local explanations and generates graphs as global explanations. However, these graph-based methods have limited expressiveness in explaining a class with multiple sufficient explanations. To achieve more expressive explanations, we propose utilizing class expressions (CEs) from the field of description logic (DL). We demonstrate our approach on heterogeneous graphs with different node types, which we explain with CEs in the description logic EL. To identify the most fitting explanation, we construct multiple graphs for each CE and calculate the average GNN output among those graphs. Our approach offers a more expressive mechanism for explaining GNNs in node classification tasks and addresses the limitations of existing graph-based explanations.

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



## Structure of Code

#### Overview of the Files
There is a vast summary of files, but only some are important:

`create_random_ce.py` describes all functions, which are needed to create and mutate one CE, with some additional utility functions.

`generate_graphs.py` describes all functions which are needed to create heterogeneous PyTorch-geometric graphs from a CE.

`main.py` brings all functions together and describes the Beam-Search.

`evaluation` describes the scoring function for beam search, as well as accuracy and fidelity.

`datasets.py` describes the generation of the dataset heteroBAShapes.

`visualization.py` describes all functions needed to visualize the results.

#### Functions from the paper

1. **Mutate CE** refers to the function `mutate_ce` in `create_random_ce.py`
2. **Beam Search** refers to the function `beam_search` in `main.py`
3. **Create Graph** refers to the function `get_graph_from_ce` in `create_random_ce`
4. **Accuracy** refers to the function `get_accuracy_baheteroshapes` in `evaluation.py`

## Parameters to set in the beginning

The dataset is fixed to the HeteroBAShaped dataset.

`layers` Set to 2 or 4, depending if you want to use a 2-hop or 4-hop neighborhood

`number_of_ces` gives the number of CEs to pass each beam search iteration  

`number_of_graphs` gives the number of different graphs, created to each CE

`start_length ` gives the number of classes for the CEs to start beam search

`iterations=1000` The number of Class Expressions created and tested.

#### Hyperparameters
`lambdaone` Gives the regularization parameter for the length of the CE
`lambdatwo` Gives the regularization parameter for the empirical variance of the CE on the corresponding graphs (not used or explained in the paper)
