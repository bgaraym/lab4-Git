#!/bin/bash
#
#SBATCH -p hpc-bio-pacioli
#SBATCH --chdir=/home/alumno05/lab4-Git
#SBATCH -J cut
#SBATCH --cpus-per-task=4
#SBATCH --error=%u.%j.err
#SBATCH --ntasks-per-node=4


export OMP_NUM_THREADS=$SLURM_CPUS_PER_TASK

srun -n4 ./file-cut.sh
