#!/bin/bash -e
#
############################################################

export DEPLOYMENT=$1
export PORT=7019
export SERVER=chomsky.brightblock.org
export TARGET_ENV=linode-staging

printf "\nConnecting to: $SERVER.\n\n"

ssh -i ~/.ssh/id_rsa -p $PORT bob@$SERVER "
  cd /home/bob/hubgit/bitcoistartuplab/bitcoin-s/bitcoin-s-ts
  git pull
  cd wallet-server-ui-proxy
  npm 
";

printf "Finished....\n"
printf "\n-----------------------------------------------------------------------------------------------------\n";

exit 0;

