# I) sort on basis of roll, II)print length of students in English department II) print detail of student in CSE branch.

FILE="jq_3.json"
PRE_SCRIPT="touch" #Creating a storage file
POST_SCRIPT="rm -f" #Removing the storage file
pre_raw="$($PRE_SCRIPT $FILE)" #prescript

echo '[{"roll": 3,"name": "Micheal","batch": 29,"department": "CSE"},{"roll": 55,"name": "Lisa","batch": 34,"department": "BBA"},{"roll": 12,"name": "John","batch": 22,"department": "English"}]' >> jq_3.json

jq -s 'sort_by(.[].roll)' jq_3.json #sorting the data

#Having difficulty in the other two parts