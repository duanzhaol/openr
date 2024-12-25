MODEL_BASE=/home/duan/workspace/o1-models/
POLICY_MODEL_NAME=Qwen2.5-Math-1.5B-Instruct
VALUE_MODEL_NAME=Qwen2.5-Math-7B-Instruct

python reason/evaluation/evaluate.py \
    --LM ${POLICY_MODEL_NAME} \
    --RM ${VALUE_MODEL_NAME} \
    --task_name MATH \
    --temperature 0.7 \
    --max_new_tokens 2048 \
    --num_sequence 4 \
    --save_dir debug \
    --method best_of_n \
    --num_worker 32 \
    --controller_addr http://0.0.0.0:28777

# math-shepherd-mistral-7b-prm