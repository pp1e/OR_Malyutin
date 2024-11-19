echo 'input count'
read count

while [ $count -ge 0 ]; do
    echo $count
    count=$((count-1))
done
