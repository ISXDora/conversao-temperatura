# A imagem precisa ser enxuta, confiável e versionada
# Versionamento da imagem, além de ser boa prática garante idempotência
#Sempre que construir essa imagem, ela terá o mesmo comportamento
FROM node:20.9.0
WORKDIR /app
COPY . ./
RUN cd src && npm install
ENTRYPOINT ["node", "src/server.js"]
