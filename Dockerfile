FROM public.ecr.aws/docker/library/python:3.11.9-slim

WORKDIR /app

# 1. Copy requirements first to use Docker cache
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# 2. Copy the entire project (includes artifacts/ and .pkl files)
COPY . .

# 3. Expose port 8080 for Elastic Beanstalk
EXPOSE 8080

# 4. Start with Debug logs and a longer timeout for ML processing
# Change app:app to app:application
CMD ["gunicorn", "--bind", "0.0.0.0:8080", "--timeout", "120", "--preload", "app:application"]