#!/bin/bash

############# SLURM SETTINGS #############
#SBATCH --job-name=WorkshopJob  # descriptive job name of your choice
#SBATCH --time=0-01:00:00       # time limit in the form of d-hh:mm:ss
#SBATCH --mem=4G                # memory per node in the form of [num][M|G|T]
#SBATCH --nodes=1               # number of nodes
#SBATCH --ntasks-per-node=1     # number of tasks per node
#SBATCH --cpus-per-task=1       # number of processor assigned per task, increase for multi-threaded runs

############# LOADING SOFTWARE #############


############# MY CODE #############

