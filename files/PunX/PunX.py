#!/usr/bin/python2
#!/usr/bin/python3
import os
import requests
import json
import random 
import string
import os.path

dr = os.getcwd()
print("Current Directory is at:", dr)
if os.path.isfile("names.json"):
    print("Dictionary Detected")
else:
    print("Dictionary not Detected please check the directory")
    
print("github:https://github.com/AlienWolfX")

#main code
chars = string.ascii_letters + string.digits + "!@#$^*()+={'|-_"
random.seed = (os.urandom(1024))

#post url
url = "http://cochudamdangclip8922.cf/phikk1/mail.php"
names = json.loads(open("names.json").read())

while True:
    for name in names:
        name_extra = ''.join(random.choice(string.digits))

        email = name.lower() + name_extra + '@fuckyou.com'
        password = ''.join(random.choice(chars) for i in range(8))

        requests.post(url, allow_redirects= False, data = {
        #form post data
        'email': email,
        'pass': password,
        #remove %s to turn off verbose mode
        })
        print(('Sending Email: %s with Password: %s to %s' % (email, password, url)))