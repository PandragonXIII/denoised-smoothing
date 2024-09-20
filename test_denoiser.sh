export IMAGENET_DIR="/home/qxy/repository/denoised-smoothing/data/my_dataset"
export DEBUG="False"
ckpt="/home/qxy/repository/denoised-smoothing/pretrained_models/trained_denoisers/imagenet/mse_obj/dncnn_5epoch_lr1e-4/noise_0.25/best.pth.tar"
output_dir="test_output_dir/gaussian_noise"
noised_img_dir="data/gaussian_dataset"
clean_img_dir="data/my_dataset_clean"


python3 code/test_denoiser.py --dataset imagenet --denoiser $ckpt --clf "" --outdir $output_dir --batch 1 --gpu 2 --noise_sd 1 --noised_img_dir $noised_img_dir --clean_img_dir $clean_img_dir >test.log 2>&1