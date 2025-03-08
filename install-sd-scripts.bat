git clone -b sd3 https://github.com/kohya-ss/sd-scripts

python -m venv venv
.\venv\Scripts\activate

pip install torch torchvision torchaudio --extra-index-url https://download.pytorch.org/whl/cu126

cd sd-scripts
pip install --upgrade -r requirements.txt

cd ..
pip install xformers --index-url https://download.pytorch.org/whl/cu126

accelerate config
