FROM python:3.9-alpine

LABEL org.opencontainers.image.description="Deltadore Tydom to MQTT Bridge"

# Add required packages
RUN apk add --no-cache gcc musl-dev linux-headers

# App base dir
WORKDIR /app

# Copy requirements first to leverage Docker cache
COPY requirements.txt .
RUN pip install -r requirements.txt

# Copy app
COPY /app .
COPY /doc .

# Main command
CMD [ "python", "-u", "main.py" ]
