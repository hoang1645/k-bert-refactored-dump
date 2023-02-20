#!/bin/bash

CUDA_VISIBLE_DEVICES=0 python3 run_kbert_cls.py \
--pretrained_model_path ./models/google_model.bin \
--config_path ./models/google_config.json \
--vocab_path ./models/google_vocab.txt \
--train_path ../datasets_sentiment_analysis/train.csv \
--dev_path ../datasets_sentiment_analysis/valid.csv \
--test_path ../datasets_sentiment_analysis/test.csv \
--epochs_num 5 --batch_size 4 --kg_name ./brain/kgs/FB15k-237.spo \
 --output_model_path ./outputs/kbert_imdb_fb15k237.bin