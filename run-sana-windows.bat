type about.nfo
@echo off
call conda activate sana
set DEMO_PORT=15432 
python app/app_sana.py --share --config=configs/sana_config/1024ms/Sana_1600M_img1024.yaml --model_path=hf://Efficient-Large-Model/Sana_1600M_1024px/checkpoints/Sana_1600M_1024px.pth --image_size=1024