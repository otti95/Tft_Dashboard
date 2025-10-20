# Basis-Image für Python 3.11 (leichtgewichtig)
FROM python:3.11-slim

# Labels für Home Assistant Add-on
LABEL maintainer="Dein Name <dein@email.com>"
LABEL version="1.0"
LABEL description="TFT Dashboard für Arduino"

# Arbeitsverzeichnis im Container
WORKDIR /data

# Add-on-Dateien kopieren
COPY run.sh send_dashboard_data.py requirements.txt ./

# Python-Abhängigkeiten installieren
RUN pip install --no-cache-dir --upgrade pip \
    && pip install --no-cache-dir -r requirements.txt \
    && chmod +x run.sh

# Standard-Befehl beim Start des Containers
CMD ["./run.sh"]
