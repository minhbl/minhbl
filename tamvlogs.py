import requests
import json
import time
ids=[]
with open('id.json', 'r') as file:
    ids= json.load(file)

print("tool by tamdz")
print("share = cat chym")

print("tam dz co dep trai khong")
print("co dep trai la co dep trai")

getkeyurl="http://45.90.13.151:6041/?url="
deltaurl="https://gateway.platoboost.com/a/8?id="

while True:
    for id in ids:
        print(f"[tam dz] get key {id}")
        keykey=requests.get(getkeyurl+deltaurl+str(id))
        json_data = json.loads(keykey.content.decode('utf-8'))
        print(f"[tam dz] key {json_data["key"]}")
        print(f"[tam dz] done {id}")
    time.sleep(1800)