#1.Take input from api https://jsonplaceholder.typicode.com/posts with curl and print the data using jq in pretty format using shell script file.

#All the variables that are used
CURL='curl'
RVMHTTP="https://jsonplaceholder.typicode.com/posts"
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
jq $CMD $FILE #output
post_raw="$($POST_SCRIPT $FILE)" #postscript
