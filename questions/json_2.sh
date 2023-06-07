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

#creates a JS file to read the JSON file
NEW_FILE="show_json.js"
pre_raw="$($PRE_SCRIPT $NEW_FILE)"

#writes the code to display the json file
echo 'const fs = require("fs");
fs.readFile("json_1.json", (error, data) => {
  if (error) {
    console.error(error);

    throw err;
  }

  const user = JSON.parse(data);

  console.log(user);
});' >> $NEW_FILE
