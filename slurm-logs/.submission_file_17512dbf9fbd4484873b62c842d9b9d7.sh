#!/bin/bash

# Parameters
#SBATCH --cpus-per-task=2
#SBATCH --error=/home/admin/slurm-logs/%j_0_log.err
#SBATCH --gres=gpu:gtx1080:1
#SBATCH --job-name=submitit
#SBATCH --mem=4
#SBATCH --nodes=1
#SBATCH --open-mode=append
#SBATCH --output=/home/admin/slurm-logs/%j_0_log.out
#SBATCH --partition=debug
#SBATCH --signal=USR2@90
#SBATCH --time=2
#SBATCH --wckey=submitit

# command
export SUBMITIT_EXECUTOR=slurm
srun --unbuffered --output /home/admin/slurm-logs/%j_%t_log.out --error /home/admin/slurm-logs/%j_%t_log.err /usr/bin/python3 -u -m submitit.core._submit /home/admin/slurm-logs
