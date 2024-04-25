#!/bin/bash
#PBS -N Cu_init_bulk
#PBS -l nodes=cn5:ncpus=64
#PBS -j n
#PBS -e ${PBS_JOBNAME}.err
#PBS -o ${PBS_JOBNAME}.out
cd $PBS_O_WORKDIR
nohup dpgen init_bulk param.json machine.json 1>out 2>log 
