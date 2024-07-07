import requests
import json
import time
import sys
from concurrent.futures import ThreadPoolExecutor, as_completed

def fetch(url):
    try:
        response = requests.get(url)
        return response.status_code, url
    except requests.RequestException as e:
        return None, url

print('') 
ids=[]
with open('id.json', 'r') as file:
    ids= json.load(file)

print("=====tool by tamdz=====")
print("=====share = cat chym=====")

print("=====tam dz co dep trai khong=====")
print("=====co dep trai la co dep trai=====")



getkeyurl="http://45.90.13.151:6041/?url="
deltaurl="https://gateway.platoboost.com/a/8?id="

def fetch_key(id):
    id = str(id)
    try:
        keykey = requests.get(getkeyurl + deltaurl + id)
        json_data = json.loads(keykey.content.decode('utf-8'))
        return id, json_data.get("key", None)
    except requests.RequestException as e:
        return id, None
max_workers = 3

while True:
    with ThreadPoolExecutor(max_workers=max_workers) as executor:
        future_to_id = {executor.submit(fetch_key, id): id for id in ids}
        
        for future in as_completed(future_to_id):
            id = future_to_id[future]
            try:
                id, key = future.result()
                if key:
                    print(f"[tam dz] id {id} key {key}")
                else:
                    print(f"[tam dz] id {id} failed to get key")
            except Exception as e:
                print(f"[tam dz] id {id} generated an exception: {e}")
    for i in range(1800, -1, -1):
        sys.stdout.write(f"\r===== Chờ tam dz {i} giây để tiếp tục tool =====")
        sys.stdout.flush()
        time.sleep(1)
    print("")
