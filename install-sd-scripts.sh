# clone
git clone -b sd3 https://github.com/kohya-ss/sd-scripts

# virtual env
# python -m venv venv
# .\venv\Scripts\activate

# install torch
pip install torch==2.4.0 torchvision==0.19.0 --index-url https://download.pytorch.org/whl/cu124

# install sd-scripts requirements
cd sd-scripts
pip install --upgrade -r requirements.txt
cd ..

# accelerate config
accelerate config

# install libgl1
sudo apt-get update && sudo apt-get install libgl1

# login to huggingface
huggingface-cli login

# download models
cd models
huggingface-cli download black-forest-labs/FLUX.1-dev flux1-dev.safetensors --local-dir unet
huggingface-cli download black-forest-labs/FLUX.1-dev ae.safetensors --local-dir vae
huggingface-cli download zer0int/CLIP-GmP-ViT-L-14 ViT-L-14-TEXT-detail-improved-hiT-GmP-TE-only-HF.safetensors --local-dir clip
huggingface-cli download comfyanonymous/flux_text_encoders t5xxl_fp16.safetensors --local-dir clip
cd ..
