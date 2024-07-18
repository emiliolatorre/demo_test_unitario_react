FROM node:18-alpine
WORKDIR /app
COPY . .
RUN npm install && npm run build
WORKDIR /app
CMD ["npm", "run", "dev", "--host"]
EXPOSE 8080