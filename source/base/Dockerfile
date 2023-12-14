FROM pytorch/pytorch:latest
# Copy the entire app folder into the container at /app
COPY test /test
RUN pip install -r /test/requirements.txt
RUN python /test/main.py