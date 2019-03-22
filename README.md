# script for nodejs projects.

## dkbuild

"dkbuild": "docker build -t admd/srfp:test --build-arg PM2_FILE=pm2-local.json --build-arg CONTAINER_PORT=3000 --build-arg APP_NAME=admd_srfp .",

## dkstart

"dkstart": "(docker rm -f admd_srfp || echo 'ignore') && ( mkdir log || echo 'already exists' ) && docker run -d -p 3000:3000 -p 18022:22 -v \"%cd%/log\":/app/admd_srfp/logs -v \"%cd%/templates\":/app/admd_srfp/templates --name admd_srfp admd/srfp:test"
 