#!/bin/bash
#SBATCH --job-name=stress
#SBATCH --output=/home/admin/cluster_benchmark/slurm/output/stress_%A_%a.out
#SBATCH --error=/home/admin/cluster_benchmark/slurm/err/stress_%A_%a.err
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=1
#SBATCH --mem=1G
#SBATCH --time=01:00:00
#SBATCH --array=1-36
#SBATCH --signal=TERM@60
#SBATCH --time=12:00:00
cd /home/admin/cluster_benchmark
python3 scripts/stress_test.py
