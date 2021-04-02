
mkdir server
if test ! -f "ngrok"; then
rm -f ngrok-stable-linux-amd64.zip
rm -f ngrok
wget https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-amd64.zip
unzip ngrok-stable-linux-amd64.zip
rm ngrok-stable-linux-amd64.zip
fi
pip install requests
pip install psutil
if test ! -f "server/server.jar"; then
wget -O "server/server.jar" "$mc_server_url"
fi
clear
rm -rf logs
cd server
java -jar server.jar nogui & python ../main.py & ../ngrok tcp 25565 -authtoken="$ngrok_token"
