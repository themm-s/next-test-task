FROM node:18-alpine AS builder

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY . .

RUN npx prisma generate && npm run build

FROM node:18-alpine AS production

WORKDIR /app

COPY --from=builder /app ./

RUN npm install

CMD ["sh", "-c", "npx prisma db push && npm start"]

EXPOSE 3000
