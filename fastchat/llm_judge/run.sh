export OPENAI_BASE_URL=https://api.deepseek.com/v1
export OPENAI_API_KEY=

# 生成回答
python gen_api_answer.py --model [MODEL-NAME] --openai-api-base http://localhost:8000/v1 --parallel 26

# 生成评估
python gen_judgment.py --model-list [MODEL-NAME] --parallel 16 --judge-model deepseek-chat

# 展示结果
python show_result.py --model-list [MODEL-NAME] --judge deepseek-chat
