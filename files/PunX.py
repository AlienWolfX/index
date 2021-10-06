#!/usr/bin/python2
import os
import requests
import json
import random 
import string

print("Simple Python Script to Punish Phisher")
print("github:https://github.com/AlienWolfX")

chars = string.ascii_letters + string.digits + "!@#$^*()+={'|-_"
random.seed = (os.urandom(1024))

url = "http://127.0.0.1:5555/login.php"
names = json.loads(open("test.json").read())

while True:
    for name in names:
        name_extra = ''.join(random.choice(string.digits))

        username = name.lower() + name_extra + '@gmail.com'
        password = ''.join(random.choice(chars) for i in range(8))

        requests.post(url, allow_redirects= False, data = {
        'username': username,
        'password': password,
        })
        print(('sending username %s and password %s' % (username, password)))