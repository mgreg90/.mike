cp ./ngrok-url /usr/local/bin/ngrok-url
chmod u+x /usr/local/bin/ngrok-url

cp ./start-eagle /usr/local/bin/start-eagle
chmod u+x /usr/local/bin/start-eagle

[ -z "$CARECLOUD_DIR" ] && echo "Please set the environment variable CARECLOUD_DIR in your bash profile."