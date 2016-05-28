#!/bin/bash -e

echo '# Set up start'

echo '## Create project directory'

[ "$PJ_PATH" ] || PJ_PATH='~/hubotpj'
echo PJ_PATH=$PJ_PATH

mkdir -p $PJ_PATH
cd $PJ_PATH

echo '## Set up project'

yo hubot \
  --adapter=hipchat \
  --name=hubot \
  --owner=hubot \
  --description=hubot \
  <<< "Y"

git init
git add .
git ci -m 'Initial'

