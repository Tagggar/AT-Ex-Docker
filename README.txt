AT-Extender – Docker-Variante
=============================

Willkommen! Dieses Paket enthält alles, was du brauchst, um den AT-Extender bequem in einem Docker-Container zu betreiben.

🧰 Voraussetzungen
------------------
1. Stelle sicher, dass **Docker** und **Docker Compose** auf deinem System installiert sind:

   ➤ Windows und macOS:  
   Die einfachste Methode ist die Installation von **Docker Desktop**:  
   https://www.docker.com/products/docker-desktop/

   ➤ Linux (Ubuntu/Debian):
   Terminal öffnen und folgende Befehle ausführen:

   sudo apt update  
   sudo apt install docker.io docker-compose -y  
   sudo systemctl enable docker  
   sudo systemctl start docker  

   ➤ Test: Nach der Installation sollten folgende Befehle funktionieren:

   docker --version  
   docker compose version

🛠️ Vorbereitung
----------------
1 Klone das Projekt von GitHub.
2 Öffne die Datei `config.json` in einem Texteditor.
3 Trage dort deine individuellen Zugangsdaten und ggf. weitere Einstellungen ein.
   - Wichtig: Ohne gültige Konfiguration funktioniert das System nicht.

🚀 Starten des Containers
-------------------------
1. Öffne ein Terminal / eine Konsole in diesem Verzeichnis.
2. Führe folgenden Befehl aus:

   docker compose up -d --build

3. Der Container wird nun erstellt und gestartet.
   - Beim Start wird **automatisch die neueste Version des Skripts** von GitHub geladen.
   - Die Konfiguration aus `config.json` wird verwendet.

📁 Enthaltene Dateien
---------------------
- `Dockerfile` – definiert das Container-Image
- `docker-compose.yml` – startet den Container mit der richtigen Konfiguration
- `config.json` – hier müssen deine Zugangsdaten eingetragen werden
- `README.txt` – diese Datei

📌 Hinweis
----------
Wenn du den Container stoppen möchtest, einfach folgenden Befehl ausführen:

   docker compose down

Viel Spaß mit dem Tool!
