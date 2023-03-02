FROM cirrusci/flutter:stable

WORKDIR /app

COPY . .

ENV FLUTTER_HOME=/flutter

RUN flutter pub get

CMD ["flutter", "run", "--no-sound-null-safety", "--no-wrap"]

