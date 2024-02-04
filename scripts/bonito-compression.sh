#!/bin/bash
#SBATCH --gres=gpu:1
#SBATCH --mail-type=ALL # required to send email notifcations
#SBATCH --mail-user=yl11823 # required to send email notifcations - please replace <your_username> with your college login name or email address
#SBATCH --cpus-per-task=8
#SBATCH --mem=32GB
export PATH=/vol/bitbucket/${USER}/anacoda3/bin/:$PATH

source anacoda3/bin/activate
conda activate bonito_compress_project
source ~/.bashrc

source /vol/cuda/12.0.0/setup.sh
/usr/bin/nvidia-smi

cd ISO/bonito_compression/bonito
#bonito download --training
#bonito download --ctc

uptime
