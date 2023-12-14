FROM martinkarlssonio/gen-ai-image:base
# Copy the entire app folder into the container at /app
COPY app /app
RUN pip install -r /app/requirements.txt

CMD ["python", "/app/main.py"]