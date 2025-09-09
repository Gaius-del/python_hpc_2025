# Python Conda Environment Staging on HPC

This directory contains scripts to demonstrate how to effectively manage and deploy Python Conda environments on High-Performance Computing (HPC) clusters, particularly focusing on the Expanse supercomputer. The primary goal is to showcase a method for staging Conda environments to local scratch space for improved performance and reliability.

## Files:

*   **`node_info.py`**:
    A Python script that collects and logs system-specific information such as hostname, total memory, number of logical cores, the active Conda environment path, and relevant SLURM job IDs (`SLURM_PROCID`, `SLURM_LOCALID`, `SLURM_NODEID`). This script is used to verify the environment setup on each compute node.

*   **`stage_condaenv.sh`**:
    A shell script designed to be *sourced* (not executed directly) that automates the setup of a specified Conda environment on a compute node. It performs the following steps:
    1.  Downloads and installs Miniforge to the local scratch directory (`$SLURM_TMPDIR`).
    2.  Copies a pre-cached Conda environment archive (`.tar.gz`) from a central cache (`$GALYLEO_CACHE_DIR`) to the local scratch.
    3.  Extracts and activates the copied Conda environment.
    4.  Optionally runs `conda-unpack` if available.
    This script ensures that each node has its own isolated and optimized Conda environment.

*   **`python_expanse.slurm`**:
    A SLURM job script (`.slurm`) that orchestrates the execution of `node_info.py` across multiple compute nodes. It uses `srun` to:
    1.  Allocate resources (e.g., 3 nodes, 1 task per node, 128 CPUs per task).
    2.  Source `stage_condaenv.sh` on each allocated node to set up the Python environment.
    3.  Execute `node_info.py` within the activated environment on each node.
    This script demonstrates how to launch a distributed Python application on Expanse, ensuring each process runs within a properly staged Conda environment.
