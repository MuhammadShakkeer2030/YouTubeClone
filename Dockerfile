FROM node:18-alpine
WORKDIR /app
COPY package*.json  ./
RUN npm install
COPY . .
RUN npm run build
EXPOSE 3000
# Set the user to a non-root user (node in this case)
USER node
CMD ["npm","start"]