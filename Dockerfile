FROM node:10.10.0-slim
RUN echo "building..."

RUN mkdir /app
WORKDIR /app
COPY preguntas.md /app/preguntas.md