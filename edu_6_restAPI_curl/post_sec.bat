curl -X POST -H "Content-Type: application/json" "http://192.168.0.148:5001/machiot-rest-api/" -d '{ "values":[["TAG_ELEC1","2018-01-10 01:11:11",100]], "date_format":"YYYY-MM-DD HH24:MI:SS" }'
curl -X POST -H "Content-Type: application/json" "http://192.168.0.148:5001/machiot-rest-api/" -d '{ "values":[["TAG_ELEC2","2018-01-10 02:22:22",200],["TAG_TEMP1","2018-01-10 01:11:11",11],["TAG_TEMP2","2018-01-10 02:22:22",22]], "date_format":"YYYY-MM-DD HH24:MI:SS" }'

