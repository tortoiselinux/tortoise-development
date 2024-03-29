#!/usr/bin/env bash
#========================{CABEÇALHO}=======================|
#
#AUTOR:
# wellyton 'welly' <welly.tohn@gmail.com>
#
#NOME: mkfile
#
#
#DESCRIÇÃO:
# programa para automatizar a criação de arquivos vazios.
#
#LICENÇA:
# MIT
#
#CHANGELOG:
# VERSÃO 0.0.1 - beta
#
#   Descrição:
#     - Criada a funcionalidade de criar arquivos.
#
#	  Alterações:
#     - criar arquivos vazios
#
# VERSÃO 0.0.2
#
#   Descrição:
#     - gerar scripts a partir do mkfile.
#
#   Alterações:
#     - adicionado suporte a argumentos
#     - gerando scripts por meio do template
#

# VARIÁVEIS GLOBAIS

help="
$(basename $0) {OPÇÃO}
comandos:
  $(basename $0) -{comando}
  h | help
  e | empity
  s | script

  OBS: (-) ou (--) antes dos comandos é opcional
"

# FUNÇÕES

HELP(){
  printf '%\n' "$help"
}

CREATE_EMPITY_ARCHIVE(){
  echo "" > "$1"
}

# INICIO DO PROGRAMA

case "$1" in
  h | -h | help | --help)
    printf '%s\n' "$help"
  ;;

  e | -e | empity | --empity)
    CREATE_EMPITY_ARCHIVE "$2"
  ;;

  s | -s | script| --script)
    template "$2"
  ;;

  *)
    CREATE_EMPITY_ARCHIVE "$1"
  ;;
esac
