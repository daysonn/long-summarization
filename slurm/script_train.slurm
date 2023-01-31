#!/bin/bash
#SBATCH --partition=gpu-titan-x      # -p
#SBATCH --constraint=GPU              # -C feature
#SBATCH --gres=gpu:1                  # 1 GPU per node
#SBATCH --nodes=1                     # -N | node count, 1 nodes reserved
#SBATCH --time=7-00:00:00             # -t | total run time limit (HH:MM:SS)
#SBATCH --output=./logs/slurm.log     # Standard output and error log
#SBATCH --error=./logs/slurm.log

######################
export APPTAINER_BIND="/scratch/$USER"
export CONTAINER_FILE="/scratch/dayson/tensorflow-summarization-cudnn8.sif"
######################
#
# Start job
#
apptainer run --nv ${CONTAINER_FILE} /home/dayson/long-summarization/run_train.sh