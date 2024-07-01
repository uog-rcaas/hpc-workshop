#!/bin/bash

############# SLURM SETTINGS #############
#SBATCH --job-name=WorkshopJob-Parallel  # descriptive job name of your choice
#SBATCH --time=0-00:01:00       # time limit in the form of d-hh:mm:ss
#SBATCH --mem=1G                # memory per node in the form of [num][M|G|T]
#SBATCH --nodes=2               # number of nodes
#SBATCH --ntasks-per-node=4     # number of tasks per node
#SBATCH --cpus-per-task=1       # number of processor assigned per task, increase for multi-threaded runs

############# LOADING SOFTWARE #############
#clear modules
module purge

#load mpi module
module load openmpi


############# MY CODE #############
#run mpi program
mpirun $HOME/HPC-Workshop-July-2024/software/mpi/hello_mpi
