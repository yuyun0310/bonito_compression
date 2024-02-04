conda create -n bonito_compress_project python pip torch==2.1.2 torchvision==0.16.2 --index-url https://download.pytorch.org/whl/cu121 cudatoolkit 'numpy~=1.24.2' -c pytorch -c conda-forge
conda activate bonito_compress_project
pip3 install -U scrappie fast5_research matplotlib
cd bonito
pip3 install -r requirements.txt
python3 setup.py develop
bonito download --ctc