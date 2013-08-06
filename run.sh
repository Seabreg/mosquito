#!/bin/bash
# start whole mosquito toolkit in Ubuntu based systems
gnome-terminal -t SimpleHTTPServer -x sh -c "python ./http-server.py webroot/ 8000"
gnome-terminal -t Mosquito -x sh -c "python mosquito/start.py 8081 4444"
gnome-terminal -t websockify -x sh -c "cd externals/websockify && python ./websockify.py 8082 localhost:8081"
xdg-open http://localhost:8000/generate.html