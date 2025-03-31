# Step 1 - Always start with a fresh environment
conda remove -n tram --all -y
conda create -n tram python=3.8 -y
conda activate tram

# Step 2 - Install CUDA Toolkit (CUDA 11.8)
conda install -c "nvidia/label/cuda-11.8.0" cuda-toolkit

# Step 3 - Use stable torch version for Windows + detectron2 + pytorch3d
pip install torch==2.1.0+cu118 torchvision==0.16.0+cu118 torchaudio==2.1.0+cu118 -f https://download.pytorch.org/whl/torch_stable.html

# Step 4 - Install required packages
pip install pytorch-lightning

# Safe versions compatible with torch 2.1
pip install 'git+https://github.com/facebookresearch/detectron2.git@a59f05630a8f205756064244bf5beb8661f96180'
pip install "git+https://github.com/facebookresearch/pytorch3d.git@stable"

pip install torch-scatter -f https://data.pyg.org/whl/torch-2.1.0+cu118.html

conda install -c conda-forge suitesparse

# Step 5 - Remaining python packages
pip install pulp
pip install supervision
pip install open3d
pip install opencv-python
pip install loguru
pip install git+https://github.com/mattloper/chumpy
pip install einops
pip install plyfile
pip install pyrender
pip install segment_anything
pip install scikit-image
pip install smplx
pip install timm==0.6.7
pip install evo
pip install pytorch-minimize
pip install imageio[ffmpeg]
pip install numpy==1.23
pip install gdown
pip install openpyxl

# Optional:
# pip install git+https://github.com/princeton-vl/lietorch.git
