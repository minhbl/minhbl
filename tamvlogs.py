import requests
import json
import time
import sys
from concurrent.futures import ThreadPoolExecutor, as_completed
import random
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
useragent=["Mozilla/5.0 (Windows NT 6.1; WOW64; rv:24.0) Gecko/20100101 Firefox/24.0",
 "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36",
 "Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2228.0 Safari/537.36",
 "Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36",
 "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36",
 "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36",
 "Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.116 Safari/537.36",
 "Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:77.0) Gecko/20100101 Firefox/77.0",
 "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36",
 "Mozilla/5.0 (Windows NT 6.1; WOW64; rv:40.0) Gecko/20100101 Firefox/40.0"]

def getkey(id):
    keydata=""

    headers = {
        'User-Agent':useragent[random.randint(0,len(useragent)-1)]
    }
    session = requests.Session()
    session.post(f"https://api-gateway.platoboost.com/v1/sessions/auth/8/{id}", json=payload,headers=headers)
    session.put(f"https://api-gateway.platoboost.com/v1/sessions/auth/8/{id}/{code}",headers=headers)
    time.sleep(5)
    session.put(f"https://api-gateway.platoboost.com/v1/sessions/auth/8/{id}/{code}",headers=headers)
    response = session.get(f"https://api-gateway.platoboost.com/v1/authenticators/8/{id}",headers=headers).text
    try:
        keydata=json.loads(response)["key"]
        print(f"[tam dz] id {id} key {keydata}")
    except:
        for i in range(60, -1, -1):
            sys.stdout.write(f"\r===== Chờ tam dz {i} giây để tiếp tục tool =====")
            sys.stdout.flush()
            time.sleep(1)
        print("\n")
        getkey(id)

while True:
   
    for id in ids:
        getkey(id)
        time.sleep(3)

    for i in range(1800, -1, -1):
        sys.stdout.write(f"\r===== Chờ tam dz {i} giây để tiếp tục tool =====")
        sys.stdout.flush()
        time.sleep(1)
    print("")
