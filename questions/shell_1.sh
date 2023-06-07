#Write a shell script which takes an integer array as input and outputs the maximum element, the minimum element and the LCM of the maximum and minimum elements. 

args=($@)
max=${args[0]}
min=${args[0]}
len=$#
i=0

#Finds the Max and Min element
while [ $i -lt $len ]
do 
if [ ${args[$i]} -gt $max ]
then
max=${args[$i]}
fi
if [ ${args[$i]} -lt $min ]
then
min=${args[$i]}
fi
i=$((i+1))
done

#Finds the LCM of the elements
max1=$max
while [ true ]
do
a=$(( $max1 % $min))
b=$(( $max1 % $max))
if [ $a -eq 0 ]
then 
if [ $b -eq 0 ]
then
break
fi
fi
max1=$((max1+1))
done

#Outputs in the cli
echo "Max= $max, Min=$min, LCM=$max1"