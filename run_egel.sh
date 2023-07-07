#!/bin/sh

run_DBLP="True"
run_BAShapes="True"
random_seed=1
iterations=1000

python main.py "$run_DBLP" "$run_BAShapes" "$random_seed" "$iterations"
