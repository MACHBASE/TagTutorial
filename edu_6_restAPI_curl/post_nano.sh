curl -X POST -H "Content-Type: application/json" "http://127.0.0.1:5001/machiot-rest-api/" -d '{ "values":[["TAG_ELEC1","2018-01-10 01:11:11 111:222:333",100]], "date_format":"YYYY-MM-DD HH24:MI:SS mmm:uuu:nnn" }'
curl -X POST -H "Content-Type: application/json" "http://127.0.0.1:5001/machiot-rest-api/" -d '{ "values":[["TAG_ELEC2","2018-01-10 02:22:22 444:555:666",200],["TAG_TEMP1","2018-01-10 01:11:11 888:777:666",11],["TAG_TEMP2","2018-01-10 02:22:22 666:555:444",22]], "date_format":"YYYY-MM-DD HH24:MI:SS mmm:uuu:nnn" }'

