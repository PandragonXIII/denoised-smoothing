export IMAGENET_DIR="/home/qxy/repository/denoised-smoothing/data/my_dataset"
export DEBUG="False"
ckpt="/home/qxy/repository/denoised-smoothing/pretrained_models/trained_denoisers/imagenet/mse_obj/dncnn_5epoch_lr1e-4/noise_0.12/best.pth.tar"
output_dir="denoiser_output_dir/gausssian_with_clean_denoise"
noised_img_dir="data/gaussian_dataset_with_clean"
clean_img_dir="data/my_dataset_clean"

# python3 code/train_denoiser.py --dataset imagenet --arch imagenet_dncnn --outdir $output_dir --noise_sd 0.25 --epochs 10 --batch 1 --lr 1e-4 --gpu 2 --pretrained-denoiser $ckpt --optimizer SGD --noised_img_dir $noised_img_dir --clean_img_dir $clean_img_dir --resume >train.log 2>&1
python3 code/train_denoiser.py --dataset imagenet --arch imagenet_dncnn --outdir $output_dir --noise_sd 0.12 --epochs 8 --batch 1 --lr 1e-3 --lr_step_size 10 --gamma 0.5 --gpu 2 --pretrained-denoiser $ckpt --optimizer SGD --noised_img_dir $noised_img_dir --clean_img_dir $clean_img_dir >train.log 2>&1