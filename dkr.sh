#!/bin/bash
ver=ngx
if [[ "$#" == "1" ]]; then
	  ver=$1
  fi
echo $ver

docker run -it --rm  --name myswagger \
   -e SWAGGER_JSON='/usr/share/nginx/html/swagger1.json' \
   -v $(pwd)/swagger1.json:/usr/share/nginx/html/swagger1.json \
   -v $(pwd)/docker-run.sh:/usr/share/nginx/docker-run.sh \
   -p 8080:8080 \
  3hdeng/swagger-ui:$ver \
  /bin/bash

# -v $(pwd)/dist:/mnt/work  -w /mnt/work \	
#    -v $gitRepo:/opt/$USER/repos \
#    -e "OPTION_NAME=OPTION_VALUE" \
