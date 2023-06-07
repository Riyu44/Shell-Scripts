# Write a shell script to download the contents of https://httpbin.scrapingbee.com/images/png into a file in local repository

#Creates the data storage file
PRE_SCRIPT="touch"
FILE="data.txt"
pre_raw="$($PRE_SCRIPT $FILE)"

#GET the data and store it in the file
curl -o data.txt "https://reqres.in/api/users/2"
