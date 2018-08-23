import json
import requests
import pprint
import time

##############################
# USER's ENV
##############################
HOSTNAME = '192.168.0.148'
PORT     = 5001
URL = 'http://%s:%d/machiot-rest-api/' % (HOSTNAME, PORT)

##############################
# POST
##############################

mytr =  time.strftime("%Y-%m-%d %H:%M:%S", time.localtime())

data = {
 "values":[
     ["TAG_ELEC1",mytr,80],
     ["TAG_ELEC2",mytr,60],
     ["TAG_TEMP1",mytr,20],
     ["TAG_TEMP2",mytr,30]
 ],
 "date_format":"YYYY-MM-DD HH24:MI:SS"
}

data_json = json.dumps(data)

headers = {'Content-type': 'application/json'}

response = requests.post(URL, data=data_json, headers=headers)

print(response.text)
