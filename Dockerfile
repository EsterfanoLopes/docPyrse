FROM esterfanolopes/py-3.6.9-ocv-3.4.2:ubuntu-18.04

# Install tesseract with portuguese language training
RUN apt update && apt -y install autoconf tesseract-ocr && \
  apt-get -y install tesseract-ocr-por

WORKDIR /usr/src/app

COPY requirements.txt .

# Install python requirements
RUN pip install --no-cache-dir -r requirements.txt

ENTRYPOINT ["python"]
