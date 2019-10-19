gcc insertionsort.c -o insert
for ((n=0;n<100;n++))
do
    python gen.py > data.in
    ./insert < data.in
done