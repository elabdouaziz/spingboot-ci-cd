# 1. Utiliser une image de base contenant Java (JDK ou JRE)
FROM openjdk:21-jdk-slim

# 2. Définir le répertoire de travail à l’intérieur du conteneur
WORKDIR /app

# 3. Copier le fichier .jar dans l’image Docker
COPY target/demo-0.0.1-SNAPSHOT.jar app.jar

# 4. Exposer le port que ton application utilise (souvent 8080)
EXPOSE 8081

# 5. Définir la commande qui lance ton app
ENTRYPOINT ["java", "-jar", "app.jar"]
