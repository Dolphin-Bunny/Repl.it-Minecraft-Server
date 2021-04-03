mkdir server
clear
if test ! -f "server/eula.txt"; then
echo You must agree to the Minecraft EULA in order to proceed.
echo https://account.mojang.com/documents/minecraft_eula
echo Press enter to agree, ctrl+c to not agree. Pressing '"stop"' will also count as '"not agree"'
read X
echo "eula=true" >server/eula.txt
clear
fi

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
rm -rf server/logs
cd server
java -jar server.jar nogui & python ../main.py & ../ngrok tcp 25565 -authtoken="$ngrok_token"
#python test.py & ./ngrok http 8080 -authtoken="$ngrok_token"
