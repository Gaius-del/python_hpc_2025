# Python for HPC

**Summary**: In this session we will introduce 2 key technologies in the Python ecosystem that provide significant benefits for scientific applications run in supercomputing environments. Previous Python experience is recommended but not required. 
* (1) First, we will learn how to speed up Python code compiling it on-the-fly with numba
* (2) Then we will introduce the threads, processes and the Global Interpreter lock and we will leverage first numba then dask to use all available cores on a machine
* (3) Finally we will distribute computations across multiple nodes launching dask workers on a separate Expanse job.

**Presented by:** [Andrea Zonca](https://www.sdsc.edu/research/researcher_spotlight/zonca_andrea.html), Lead of the Scientific Computing Applications Group. Our purpose is to help US scientists use high-performance computing and AI resources effectively, including supercomputers not at SDSC. You can find my email and contact information on my profile page.

## Repository Structure

This repository is organized into several modules, each focusing on a specific aspect of Python for HPC:

*   **0_python_condaenv_scratch**: Contains scripts and examples for managing and deploying Python Conda environments on HPC clusters, specifically demonstrating staging to local scratch space for improved performance.
*   **1_python_singularity**: Provides guidance and scripts for using Singularity to run Docker containers on HPC systems like Expanse, including pulling images and launching containers with Galyleo.
*   **2_ai_code_assist**: Offers an overview of setting up and utilizing AI code assistants for Python development, with a focus on VS Code with GitHub Copilot and the Gemini CLI.
*   **3_threads_vs_processes**: Explores the concepts of threads, processes, and the Global Interpreter Lock (GIL) in Python, likely through an interactive notebook.
*   **4_numba**: Features examples and notebooks demonstrating how to use Numba for speeding up Python code, including basics, NumPy integration, and threading.
*   **5_dask**: Contains notebooks and examples illustrating the use of Dask for parallel and distributed computing, covering Dask graphs, delayed computations, and distributed arrays.
*   **dask_slurm**: Includes scripts for launching Dask schedulers and workers on SLURM-managed HPC clusters, enabling distributed Dask computations across multiple nodes.
