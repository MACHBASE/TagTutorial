import sys
import json
import requests
import time
import random

##############################
# USER's ENV
##############################
HOSTNAME = '192.168.0.148'
PORT     = 5001
URL = 'http://%s:%d/machiot-rest-api/' % (HOSTNAME, PORT)
DEFAULT_COUNT = 600;
##############################
# POST
##############################

data = {
 "date_format":"YYYY-MM-DD HH24:MI:SS"
}

headers = {'Content-type': 'application/json'}

if __name__ == '__main__':

    if (len(sys.argv) == 2):
        count = sys.argv[1];
    else:
        count = DEFAULT_COUNT;

    for i in range(0, int(count)):
        mytr =  time.strftime("%Y-%m-%d %H:%M:%S", time.localtime())
        values = [
            ["TAG_ELEC1",mytr,80 + random.random()* 25],
            ["TAG_ELEC2",mytr,60 + random.random()* 30],
            ["TAG_TEMP1",mytr,20 + random.random()* 20],
            ["TAG_TEMP2",mytr,30 + random.random()* 10],
        ];
        data["values"] = values;
        data_json = json.dumps(data)
        print data_json;
        response = requests.post(URL, data=data_json, headers=headers)
        print response.text;
        time.sleep(1);
