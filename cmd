python3 train.py --data_dir=data-amajor --logdir=log-amajor --lc_channels=192

python3 ./generate.py --samples 58000 --lc_label_file ./amajor.json --wav_out_path amajor-1450steps-1.wav ./log-amajor/model.ckpt-1450 

-------------------------------------------------------------------------------------------------------

python3 train.py --data_dir=data-amajor --logdir=log-amajor --lc_channels=192 --gc_channels=32


python3 ./generate.py --samples 58000 --gc_channels=32 --gc_cardinality=3 --gc_id=1 --lc_label_file ./amajor.json --wav_out_path speaker1.wav ./log-amajor/model.ckpt-50
Where

--gc_channels=32 specifies 32 is the size of the embedding vector, and must match what was specified when training.

--gc_cardinality=377 is required as 376 is the largest id of a speaker in the VCTK corpus. If some other corpus is used, then this number should match what is automatically determined and printed out by the train.py script at training time.

--gc_id=311 specifies the id of speaker, speaker 311, for which a sample is to be generated.
