#Program that take a range from 0 - 100 and find the digits that are repeated twice and store it in array.

repeated=()

for (( i=0; i<=100; i++ ))
do
    if [[ $i -ge 10 && $i -le 99 ]]
    then
        if [[ "${i:0:1}" == "${i:1:1}" ]]
        then
            repeated+=($i)
        fi
    fi
done
echo "The digits that are repeated twice are: ${repeated[@]}"
