python3 train.py --data_dir=data-amajor --logdir=log-amajor --lc_channels=192

python3 ./generate.py --samples 58000 --lc_label_file ./amajor-gen-1.json --wav_out_path amajor-1-9800steps-1.wav ./log-amajor/model.ckpt-9800

