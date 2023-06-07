# For the input file broken.txt, print all lines between the markers top and bottom.

# creates broken.txt file
PRE_SCRIPT="touch"
FILE="broken.txt"
pre_raw="$($PRE_SCRIPT $FILE)"

#enters the data into the newly created file
echo 'top
3.14
bottom
top
1234567890
bottom
top
Hi there
Have a nice day
Good bye' >> $FILE

#This is still printing top for some reason
sed -n '/top/{:a; n; /bottom/!{p; ba;}; :b; n; /bottom/!{p; bb;}; q;}' broken.txt

#remove broken.txt
POST_SCRIPT="rm -f" #Removing the storage file
post_raw="$($POST_SCRIPT $FILE)" #postscript
