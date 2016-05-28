#!/bin/bash -e

echo '# Set up start'

cd `dirname $0`
configDir=`pwd`

echo '## Create project directory'

[ "$PJ_PATH" ] || PJ_PATH="${HOME}/hubotpj"
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

cp $configDir/hubot-scripts.json .

git init
git add .
git commit -m 'Initial'

