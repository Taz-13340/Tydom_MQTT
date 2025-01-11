FROM python:3.9-alpine

LABEL org.opencontainers.image.description="Deltadore Tydom to MQTT Bridge"

# App base dir
WORKDIR /app

# Copy app
COPY . .

# Install dependencies
RUN pip3 install -r requirements.txt

# Main command
CMD [ "python", "-u", "main.py" ]
