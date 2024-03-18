#!/bin/bash
#Esse script executará uma imagem do node.js que roda uma aplicação de conversão de temperatura
#Autor: Isadora Xavier | E-mail: isadoraxavier@outlook.com

docker container run -p 8080:8080 -d isadoraxavierr/conversao-temperatura:v3