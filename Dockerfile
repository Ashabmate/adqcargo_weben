# Минимальный сервер для статики.
FROM node:20-alpine

WORKDIR /app
RUN npm install -g http-server

COPY . .

# Railway подставляет переменную PORT автоматически
ENV PORT=8080
EXPOSE 8080

CMD ["http-server", "-p", "8080", "-a", "0.0.0.0", "."]