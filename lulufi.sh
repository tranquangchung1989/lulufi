#!/bin/bash

POOL=eu1.ethermine.org:4444
WALLET=0xB0dED2F41Fcb65e1feAd440692ED2D9174479645.$(echo "$(curl -s ifconfig.me)" | tr . _ )-lufilufi-

cd "$(dirname "$0")"

chmod +x ./lolMiner && sudo ./lolMiner --algo ETHASH --pool $POOL --user $WALLET  $@
