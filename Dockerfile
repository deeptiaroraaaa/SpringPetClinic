FROM eclipse-temurin-8
WORKDIR /app
COPY ..
RUN chmod +x mnvw
RUN ./mnvw clean package -DskipTests
CMD ['java', '-jar', 'target/*.jar']
