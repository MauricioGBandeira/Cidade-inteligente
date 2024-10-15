FROM openjdk:21-jdk

# Instala o Maven
RUN microdnf install -y maven

# Cria o diretório de trabalho
RUN mkdir /app

# Define o diretório de trabalho
WORKDIR /app

# Copia o JAR gerado para o contêiner
COPY target/*.jar /app/app.jar

# Comando para rodar a aplicação
CMD ["java", "-jar", "/app/app.jar"]
