#!/bin/bash

############# SLURM SETTINGS #############
#SBATCH --reservation=sufrs-hpc-workshop    # name of the reservation
#SBATCH --job-name=WorkshopJob-Monitoring   # descriptive job name of your choice
#SBATCH --time=0-01:00:00                   # time limit in the form of d-hh:mm:ss
#SBATCH --mem=4G                            # memory per node in the form of [num][M|G|T]
#SBATCH --nodes=1                           # number of nodes
#SBATCH --ntasks-per-node=1                 # number of tasks per node
#SBATCH --cpus-per-task=4                   # number of processor assigned per task, increase for multi-threaded runs

############# LOADING SOFTWARE #############
#clear modules
module purge

#add executable to PATH
export PATH="$PATH:$HOME/HPC-Workshop-July-2024/software/stress/bin" 

############# MY CODE #############
#print message to console
echo "My job starts now and will run for 3 minutes!"

#"stress" 2 CPUs for 3 minutes
stress -c 2 -t 3m 

#print message to console
echo "Now my job is done!" 
