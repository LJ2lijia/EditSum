#!/bin/bash
WORKDIR=""
export PYTHONPATH=$WORKDIR

python edit/train.py \
	-save_path saved_models \
	-log_home saved_models \
	-online_process_data \
	-train_src data/train.src \
	-train_tgt data/train.tgt \
	-dev_input_src data/valid.src \
	-dev_ref data/valid.tgt \
	-layers 1 -enc_rnn_size 512 -brnn -word_vec_size 300 -dropout 0.5 \
	-batch_size 512 -beam_size 5 \
	-epochs 20 \
	-gpus 3 \
	-optim adam -learning_rate 0.001 \
	-curriculum 0 -extra_shuffle \
	-start_eval_batch 10000 -eval_per_batch 10000 -seed 12345 -cuda_seed 12345 -log_interval 100

