#!/bin/zsh

CUDA_VISIBLE_DEVICES=0 python run_kbert_cls.py \
--pretrained_model_path models/kbert_imdb_fb15k237.bin \
--config_path models/google_config.json \
--vocab_path ../bert-base-uncased/vocab.txt \
--train_path dataset/train.csv \
--dev_path dataset/valid.csv \
--test_path dataset/test.csv \
--epochs_num 10 --batch_size 4 --kg_name brain/kgs/FB15k-237.spo \
--output_model_path outputs/kbert_imdb_fb15k237.bin --workers_num 3
# --pretrained_model_path ../bert-base-uncased/pytorch_model.bin \