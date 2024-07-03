source .venv/bin/activate
cd "Recovery network/"

# Stage 2
# Further recover the images with our network to achieve pixel-level
# compensation and alignment framework  

# scene: 1 means 512x256, 2 means 1024x512
python test.py --name Cityscape512 --resize_or_crop scale_width --scen 1 --dataroot ../Datasets/test512 --gpu_ids 1 --which_epoch 200

python test.py --name Cityscape1K --resize_or_crop scale_width --scen 2 --dataroot ../Datasets/test1K --gpu_ids 1 --which_epoch 200
# training
#python train.py --name Cityscape512 --resize_or_crop scale_width --scen 1 --dataroot ../Datasets/train512 --gpu_ids 1