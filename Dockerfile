# Utilise l'image officielle de Python
FROM python:3.11-slim

# Répertoire de travail dans le conteneur
WORKDIR /app

# Copier le fichier requirements.txt et installer les dépendances
COPY requirements.txt /app/
RUN pip install --no-cache-dir -r requirements.txt

# Copier tous les fichiers de ton projet dans le conteneur
COPY . /app/

# Exposer le port de l'application Django
EXPOSE 8000

# Commande pour démarrer le serveur Django
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
