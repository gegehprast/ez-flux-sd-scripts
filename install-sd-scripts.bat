git clone -b sd3 https://github.com/kohya-ss/sd-scripts

python -m venv venv
.\venv\Scripts\activate

pip3 install torch==2.4.0 torchvision==0.19.0 --index-url https://download.pytorch.org/whl/cu124

cd sd-scripts
pip install --upgrade -r requirements.txt

cd ..
pip install xformers --index-url https://download.pytorch.org/whl/cu124

accelerate config

sudo apt-get update && sudo apt-get install libgl1