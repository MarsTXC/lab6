# Use the Python image
FROM python

# Set working directory in the container
WORKDIR /chatbot

# Copy the Python scripts and other files to the container
COPY . .

# Install dependencies
RUN pip install -r requirements.txt

# Set environment variables
ENV telegram_access_token=6953324907:AAFzuTEQs4oXWmDugO2FhrFDiJsBjkw6rqw
ENV BASICURL=https://chatgpt.hkbu.edu.hk/general/rest
ENV MODELNAME=gpt-4-turbo
ENV APIVERSION=2024-02-15-preview
ENV chatGPT_access_token=7d00a1fc-01e5-4b8e-bb9c-56494b6581c5

# Set the entrypoint
CMD ["python", "chatbot.py"]
