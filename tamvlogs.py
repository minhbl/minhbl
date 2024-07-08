import requests
import json
import time
import sys

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

def getkey(id):
    keydata=""
    session = requests.Session()
    session.post(f"https://api-gateway.platoboost.com/v1/sessions/auth/8/{id}", json=payload)
    session.put(f"https://api-gateway.platoboost.com/v1/sessions/auth/8/{id}/{code}")
    time.sleep(5)
    session.put(f"https://api-gateway.platoboost.com/v1/sessions/auth/8/{id}/{code}")
    response = session.get(f"https://api-gateway.platoboost.com/v1/authenticators/8/{id}").text
    try:
        keydata=json.loads(response)["key"]
        print(f"[tam dz] id {id} key {keydata}")
    except:
        pass

 

while True:
    allthread=[]
    for id in ids:
        getkey(id)
        time.sleep(1)
    for i in range(1800, -1, -1):
        sys.stdout.write(f"\r===== Chờ tam dz {i} giây để tiếp tục tool =====")
        sys.stdout.flush()
        time.sleep(1)
    print("")
