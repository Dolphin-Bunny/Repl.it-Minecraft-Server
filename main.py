from flask import Flask
import requests,psutil,os,math,sys
app = Flask('app')
#webhook_url

def get_size(start_path = '.'):#from https://gist.github.com/SteveClement/3755572
    total_size = 0
    for dirpath, dirnames, filenames in os.walk(start_path):
        for f in filenames:
            fp = os.path.join(dirpath, f)
            total_size += os.path.getsize(fp)
    return total_size


@app.route('/')
def home():
  address = requests.get('http://127.0.0.1:4040/api/tunnels').json()['tunnels'][0]['public_url'].strip('tcp://')
  mcapi = requests.get('https://mcapi.us/server/status?ip='+address).json()
  return f'''
<h1>Server Online</h1>
Address: <code>{address}</code><br>
Version: <code>{os.getenv('mc_version')}</code><br><br>
RAM: <code>{psutil.virtual_memory().percent}%</code><br>
Used Disk Space: <code>{math.trunc((get_size(os.getcwd())*0.000001)*10)/10}MB / {500 if not os.getenv('hacker_plan')=='true' else 1000}MB</code><br>
<code>{mcapi['server']['name']}</code>
'''


app.run('0.0.0.0',8080)
