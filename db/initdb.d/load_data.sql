-- csv 파일들은 프로젝트 폴더의 /db/data 폴더에 있어야, DBMS 컨테이너 안의 /var/lib/mysql 쪽에서 마운트/역참조 할수있다
-- docker-compose.yml 에 db 서비스의 volumes: 쪽에 디렉토리 지정되있음.
LOAD DATA INFILE './seoul_patient_count.csv' INTO TABLE patient FIELDS TERMINATED BY ',' (date, gu, patient_count);

LOAD DATA INFILE './seoul_deliver_count.csv' INTO TABLE delivercount FIELDS TERMINATED BY ',' (date, gu, dong, deliver_count);

LOAD DATA INFILE './seoul_delivery_count_with_patient.csv' INTO TABLE patientdelivery FIELDS TERMINATED BY ',' (date, gu, deliver_count, patient_count);

LOAD DATA INFILE './food_weather.csv' INTO TABLE foodhour FIELDS TERMINATED BY ',' (date, day, hour, food, count, weather);

-- 문제있는 파일로 인한 데이터 삽입 오류로 임시 주석처리
-- LOAD DATA INFILE './yogiyo_delivery_in_seoul.csv' INTO TABLE yogiyostore FIELDS TERMINATED BY ',' (name, categories, review_avg, lat, lng, phone, address);