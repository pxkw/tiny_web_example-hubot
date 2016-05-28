#!/bin/bash -e

[ "$PJ_PATH" ] || PJ_PATH="${HOME}/hubotpj"
echo PJ_PATH=$PJ_PATH
cd $PJ_PATH

[ "$HUBOT_HIPCHAT_JID" ] || \
  ( echo 'Require HUBOT_HIPCHAT_JID'; exit 1 )
[ "$HUBOT_HIPCHAT_PASSWORD" ] || \
  ( echo 'Require HUBOT_HIPCHAT_PASSWORD'; exit 1 )

./bin/hubot -a hipchat

