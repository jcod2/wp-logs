#!/bin/bash
#SBATCH --job-name=cpu_single
#SBATCH --output=/home/admin/cluster_benchmark/slurm/output/cpu_single_%A_%a.out
#SBATCH --error=/home/admin/cluster_benchmark/slurm/err/cpu_single_%A_%a.err
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=1
#SBATCH --mem=512M
#SBATCH --time=01:00:00
#SBATCH --array=1-36

cd /home/admin/cluster_benchmark
python3 scripts/cpu_single.py
