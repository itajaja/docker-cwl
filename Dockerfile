FROM python:3.6

# Install deps
COPY requirements.txt /var/tmp/
RUN pip install --no-cache-dir -r /var/tmp/requirements.txt

# Install Node
RUN curl -sL https://deb.nodesource.com/setup_8.x | bash -
RUN apt-get install -y nodejs &&  rm -rf /var/lib/apt/lists/*
