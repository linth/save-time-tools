i=0
sum=0

while [ "${i}" != "100" ]; do
    i=$(($i+1))
    sum=$(($sum+$i))
done

echo "the result: ${sum}"