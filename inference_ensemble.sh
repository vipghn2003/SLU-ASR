#!/bin/bash
wav_dir=$1
model_path=$2
lm_path=$3
output=$4

python3 prepare_test_data.py -w $1

echo "Done prepare test data"

python3 inference_ensemble.py -f test_file_list.txt -m $2 -lm $3

echo "Done getting output of model"

python3 post_process.py -f ens_transcript_test_file_list.txt -s $4

echo "Done post processing"

