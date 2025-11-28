# HF Quiz Endpoint Foundation

Minimal skeleton for the LLM Analysis Quiz endpoint.
This repo intentionally does NOT solve quizzes or make network requests.
It provides the API interface, secret verification, and logging foundations.

## Quick start (local)
1. Install dependencies:
   python -m pip install -r requirements.txt

2. Run with uvicorn:
   uvicorn app:app --host 127.0.0.1 --port 7860

3. Test:
   curl -X POST http://127.0.0.1:7860/quiz -H Content-Type: application/json     -d '{email:you@example.com,secret:change-me,url:https://example.com/quiz-1}'

## Docker (local)
1. Build:
   docker build -t hf-quiz-endpoint .

2. Run:
   docker run -p 7860:7860 -e QUIZ_SECRET=change-me hf-quiz-endpoint

## Deploy to Hugging Face Spaces
- Create a new Space (SDK: Docker)
- Push this repo to the Space git remote
- Set the environment variable QUIZ_SECRET in Space settings
- The endpoint will be available at:
  https://<SPACE_DOMAIN>/quiz

## Notes
- This repo is purposely minimal. Implement the actual fetch/solve/submit logic inside solver.py.
- Do NOT commit secrets.
