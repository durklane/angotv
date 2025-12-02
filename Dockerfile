FROM cirrusci/flutter:latest

WORKDIR /app

COPY . .

RUN flutter pub get

RUN flutter build web

EXPOSE 8080

CMD ["bash", "-c", "cd build/web && python3 -m http.server 8080"]
