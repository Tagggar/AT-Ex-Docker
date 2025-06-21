FROM python:3.11-slim

RUN apt-get update -qq \
 && apt-get install -qq -y \
    curl wget gnupg libnss3 libatk1.0-0 libatk-bridge2.0-0 libcups2 \
    libdrm2 libxcomposite1 libxdamage1 libxrandr2 libgbm1 libasound2 \
    libpangocairo-1.0-0 libgtk-3-0 libxss1 libx11-xcb1 libxshmfence1 \
    libxext6 libxfixes3 \
 && rm -rf /var/lib/apt/lists/*

WORKDIR /app
COPY . .

RUN pip install --no-cache-dir playwright requests \
 && playwright install --with-deps chromium firefox webkit

CMD curl -sSL https://raw.githubusercontent.com/Dinobeiser/AT-Extender/main/at-extender.py -o at-extender.py && python at-extender.py