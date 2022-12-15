#!/bin/bash
#SBATCH --partition=gpu-titan-xp      # -p
#SBATCH --constraint=GPU              # -C feature
#SBATCH --gres=gpu:titanxp:1                  # 1 GPU per node
#SBATCH --nodes=1                     # -N | node count, 1 nodes reserved
#SBATCH --time=2-00:00:00             # -t | total run time limit (HH:MM:SS)
#SBATCH --output=./logs/slurm.log     # Standard output and error log
#SBATCH --error=./logs/slurm.log

apptainer run --nv /opt/images/tensorflow-summarization.sif /home/dayson/long-summarization/run_train.sh