export OPENAI_BASE_URL=https://api.deepseek.com/v1
export OPENAI_API_KEY=

MODEL_NAME="Mistral-7B-Base-SFT-SimPO"

# 生成回答
python gen_api_answer.py --model $MODEL_NAME --openai-api-base $OPENAI_BASE_URL --parallel 16

# 生成评估
python gen_judgment.py --model-list $MODEL_NAME --parallel 16 --judge-model deepseek-chat

# 展示结果
python show_result.py --model-list $MODEL_NAME --judge deepseek-chat