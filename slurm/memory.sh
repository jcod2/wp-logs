#!/bin/bash
#SBATCH --job-name=memory
#SBATCH --output=/home/admin/cluster_benchmark/slurm/output/memory_%A_%a.out
#SBATCH --error=/home/admin/cluster_benchmark/slurm/err/memory_%A_%a.err
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=1
#SBATCH --mem=2G
#SBATCH --time=01:00:00
#SBATCH --array=1-36

cd /home/admin/cluster_benchmark
python3 scripts/memory_stress.py
