#2.Take input from https://jsonplaceholder.typicode.com/photos and print only album and url using jq. 

#All the variables that are used
CURL='curl'
RVMHTTP="https://jsonplaceholder.typicode.com/photos"
CURLARGS="-o"
FILE="data.json"
PIPE="|"
CMD="."
SYN="$"
PRE_SCRIPT="touch" #Creating a storage file
POST_SCRIPT="rm -f" #Removing the storage file

#All the commands
pre_raw="$($PRE_SCRIPT $FILE)" #prescript
raw="$($CURL $CURLARGS $FILE $RVMHTTP)" #script
cat data.json | jq '.[] | .title + "=" + .url' #command
post_raw="$($POST_SCRIPT $FILE)" #postscript
