# A imagem precisa ser enxuta, confiável e versionada
# Versionamento da imagem, além de ser boa prática garante idempotência
#Sempre que construir essa imagem, ela terá o mesmo comportamento
FROM node:20.11.1-alpine3.19
WORKDIR /app
#executando as dependencias de forma otimizada na construção das camadas na instalação dos pacotes da aplicação
COPY src/package*.json .
RUN npm install
COPY . ./
EXPOSE 8080
ENTRYPOINT ["node", "src/server.js"]
