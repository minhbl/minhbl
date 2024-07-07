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



payload = {
    "captcha":"",
    "type":"Turnstile"
}
code = "79ca"

def fetch_key(id):
    id = str(id)
    try:
        response = requests.get(f"https://api-gateway.platoboost.com/v1/authenticators/8/{id}").text
        return json.loads(response)["key"]
    except:
        pass
    session = requests.Session()
    session.post(f"https://api-gateway.platoboost.com/v1/sessions/auth/8/{id}", json=payload)
    session.put(f"https://api-gateway.platoboost.com/v1/sessions/auth/8/{id}/{code}")
    time.sleep(5)
    session.put(f"https://api-gateway.platoboost.com/v1/sessions/auth/8/{id}/{code}")
    response = session.get(f"https://api-gateway.platoboost.com/v1/authenticators/8/{id}").text
    try:
        return json.loads(response)["key"]
    except:
        return "Fail"
    
max_workers = 5

while True:
    future_to_id = {}
    with ThreadPoolExecutor(max_workers=max_workers) as executor:
        for id in ids:
            future = executor.submit(fetch_key, id)
            future_to_id[future] = id

        
        for future in as_completed(future_to_id):
            id = future_to_id[future]
            try:
                key = future.result()
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
