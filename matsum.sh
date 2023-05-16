#1/bin/bash
declare -A X
declare -A Y
declare -A Z
echo "Enter order of Matrices: "
read n

echo  "Enter elements of Matrix X"
for((i=0; i<n; i++))
do
	for((j=0; j<n; j++))
	do
	read X[$i,$j]
	done
done

echo  "Enter elements of Matrix Y"
for((i=0; i<n; i++))
do
	for((j=0; j<n; j++))
	do
	read Y[$i,$j]
	done
done

echo "The entered matrices are :"
echo "MATRIX X"
for((i=0; i<n; i++))
do
	for((j=0; j<n; j++))
	do
	echo -ne "${X[$i,$j]} "
	done
	echo
done
echo "MATRIX Y"
for((i=0; i<n; i++))
do
	for((j=0; j<n; j++))
	do
	echo -ne "${Y[$i,$j]} "
	done
	echo
done

echo "Sum is : "
for((i=0; i<n; i++))
do
	for((j=0; j<n; j++))
	do
	Z[$i,$j]=$(( X[$i,$j] + Y[$i,$j] ))
	echo -ne "${Z[$i,$j]} "
	done
	echo
done

