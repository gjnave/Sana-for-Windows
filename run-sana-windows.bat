type about.nfo
@echo off
call conda activate sana >nul

set /p MODEL_CHOICE="Choose model version (1 for 1600M, 2 for 600M): "

if "%MODEL_CHOICE%"=="1" (
    set DEMO_PORT=15432 
    python app/app_sana.py --share --config=configs/sana_config/1024ms/Sana_1600M_img1024.yaml --model_path=hf://Efficient-Large-Model/Sana_1600M_1024px/checkpoints/Sana_1600M_1024px.pth --image_size=1024 >nul
) else if "%MODEL_CHOICE%"=="2" (
    python app/app_sana.py ^
        --server_name 127.0.0.1 ^
        --config=configs/sana_config/1024ms/Sana_600M_img1024.yaml ^
        --model_path=hf://Efficient-Large-Model/Sana_600M_1024px_ControlNet_HED/checkpoints/Sana_600M_1024px_ControlNet_HED.pth ^
        --image_size=1024 >nul
) else (
    echo Invalid choice. Please run the script again and enter 1 or 2.
    exit /b
)
