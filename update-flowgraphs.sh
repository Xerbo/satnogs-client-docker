docker exec satnogs-node$1 bash -c "cd /usr/bin/flowgraphs && for i in *.grc; do; grcc \"$i\"; done; chown satnogs:satnogs *"
