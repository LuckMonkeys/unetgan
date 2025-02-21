python train.py \
--dataset celeba128 --shuffle   \
--which_best FID \
--batch_size 4 --num_G_accumulations 1 --num_D_accumulations 1 \
--num_D_steps 1 --G_lr 5e-5 --D_lr 2e-4 --D_B2 0.999 --G_B2 0.999 \
--G_attn 0 --D_attn 0 \
--SN_eps 1e-6 --BN_eps 1e-5 --adam_eps 1e-6 \
--G_ortho 0.0 \
--seed 99 \
--G_init ortho --D_init ortho \
--G_eval_mode \
--G_ch 64 --D_ch 64 \
--hier --dim_z 128 \
--ema --use_ema --ema_start 21000 \
--accumulate_stats --num_standing_accumulations 100  \
--test_every 10000 --save_every 10000 --num_best_copies 2 --num_save_copies 1 --seed 0 \
--sample_every 4000   \
--id celeba128_unet_bce_noatt_cutmix_consist --gpus "0"  \
--unconditional --warmup_epochs 20 \
--unet_mixup --consistency_loss_and_augmentation \
--base_root /home/zx/gitRepo/unetgan/results \
--data_folder /home/zx/data/celeba/img_align_celeba


# --dataset celeba128 --parallel --shuffle   \
# --batch_size 50 --num_G_accumulations 1 --num_D_accumulations 1 \
# --id celeba128_unet_bce_noatt_cutmix_consist --gpus "0,1"  \