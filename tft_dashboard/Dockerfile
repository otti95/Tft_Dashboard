# Basis: offizielles Python-Alpine Image
FROM python:3.12-alpine

# Arbeitsverzeichnis
WORKDIR /data

# Python-Abhängigkeiten
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Skript ins Containerverzeichnis kopieren
COPY send_dashboard_data.py .

# Start-Skript
COPY run.sh .
RUN chmod +x run.sh

# Standardbefehl
CMD ["/data/run.sh"]
