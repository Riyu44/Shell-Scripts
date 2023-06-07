# Create a json file to store the following data:

# creates a json file
PRE_SCRIPT="touch"
FILE="json_1.json"
pre_raw="$($PRE_SCRIPT $FILE)"

#enters the data into the newly created file
echo '{
    "name": "alex",
    "age":25,
    "hobbies":["music", "programming", "travelling"],
    "skills":{
        "javascript": "5 star",
        "python": "4 star",
        "database": "3 star"
    }
}' >> $FILE
