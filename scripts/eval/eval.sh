MODEL_BASE=/home/duan/workspace/o1-models/
POLICY_MODEL_NAME=Qwen2.5-Math-1.5B-Instruct
VALUE_MODEL_NAME=Qwen2.5-Math-7B-Instruct

python reason/evaluation/evaluate.py \
    --LM ${POLICY_MODEL_NAME} \
    --RM ${VALUE_MODEL_NAME} \
    --task_name MATH \
    --temperature 0.7 \
    --num_sequence 2 \
    --max_new_tokens 2048 \
    --method vanila_mcts