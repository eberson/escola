#!/bin/bash
for i in {52..320}
do
   curl -v -X 'DELETE' "https://3b3.em3soft.com.br/api/Curso/remover/$i"
done