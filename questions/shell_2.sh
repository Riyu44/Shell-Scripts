# Write a shell script which takes in a file as input and outputs the file in terminal

while read p 
do 
echo $p
done < $1

