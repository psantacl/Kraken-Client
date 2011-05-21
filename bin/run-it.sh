#!/bin/bash

set -e
set -x

SERVER=$1
java -cp  $(dirname $0)/../kraken-client-1.0.0-SNAPSHOT-standalone.jar clojure.main -e \
"(require 'org.wol.kraken-client.core) (org.wol.kraken-client.core/-main \"-s\"  \"$SERVER\" )"
 

#java -cp kraken-client-1.0.0-SNAPSHOT-standalone.jar clojure.main -e "(require 'org.wol.kraken-client.core) (org.wol.kraken-client.core/-main \"-s\"  \"localhost\" )"

