export IMAGENET_DIR="/home/qxy/repository/denoised-smoothing/data/my_dataset"
export DEBUG="False"
ckpt="/home/qxy/repository/denoised-smoothing/pretrained_models/trained_denoisers/imagenet/mse_obj/dncnn_5epoch_lr1e-4/noise_0.12/best.pth.tar"
data_dir="my_dataset"
output_dir="denoiser_output_dir/$data_dir"

# python3 code/train_denoiser.py --dataset imagenet --arch imagenet_dncnn --outdir $output_dir --noise_sd 0.25 --epochs 10 --batch 1 --lr 1e-4 --gpu 2 --pretrained-denoiser $ckpt --optimizer SGD --noised_img_dir $noised_img_dir --clean_img_dir $clean_img_dir --resume >train.log 2>&1
python3 code/train_denoiser.py --dataset imagenet --arch imagenet_dncnn --outdir $output_dir --epochs 15 --batch 64 --lr 1e-3 --lr_step_size 5 --gamma 0.1 --gpu 3 --pretrained-denoiser $ckpt --optimizer SGD --data_dir data/$data_dir &

# # train a new one
# python3 code/train_denoiser.py --dataset imagenet --arch imagenet_dncnn --outdir $output_dir --epochs 10 --batch 64 --lr 1e-3 --lr_step_size 5 --gamma 0.1 --gpu 3  --optimizer SGD --data_dir data/$data_dir &

# train on gaussain noise
# gaussian="gaussian_dataset"
# python3 code/train_denoiser.py --dataset imagenet --arch imagenet_dncnn --outdir "denoiser_output_dir/$gaussian" --epochs 5 --batch 64 --lr 1e-3 --lr_step_size 30 --gamma 0.1 --gpu 3  --optimizer SGD --data_dir "data/$gaussian" &