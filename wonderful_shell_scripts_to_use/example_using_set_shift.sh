#!/bin/bash

#################################################
# Script com exemplos do coando set-- e shift 1 #
# example_using_set_shift                       #
# Author: https://github.com/ifritzke           #
# V: 0.1b                                       #
# Date Created : 12/04/23                       #
#                                               #
#################################################

set -- um dois tres quatro cinco seis sete oito dez
echo $1 $2
meses="janeiro fevereiro marco abril maio julho junho agosto setembro novembro dezembro"
echo $meses
set -- $meses
echo $1 $5
echo "loop usando while faca enquanto $1 nao for nulo"
contador=1
while [ ! -z "$1" ]
do
  echo " Valor  de variavel é $1"
  shift 1
  contador=$(($contador+1))
  echo " o valor da ocorrencia aumentou em $contador"
done
echo "exemplo de for   "
for i in $meses;
do
 echo  "mes de $i"
done
echo "usando while com for"
set -- um dois tres quatro cinco seis sete oito dez onze doze
while [ ! -z "$1" ]
do
 echo "o valor  da variave $ é $1"
 for y in $meses;
 do
  echo " $ 1 = $1 e y $ =$y  "
 done
 shift 1
done