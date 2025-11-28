# Minimal Python image — small and predictable
FROM python:3.11-slim

WORKDIR /app

# copy requirements first to leverage caching
COPY requirements.txt /app/
RUN pip install --no-cache-dir -r requirements.txt

# copy the rest of the app
COPY . /app

EXPOSE 7860

# use the start script to run uvicorn
CMD ["./start.sh"]
