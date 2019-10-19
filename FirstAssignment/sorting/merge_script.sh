gcc mergesort.c -o merge
for ((n=0;n<100;n++))
do
    python gen.py > data.in
    ./merge < data.in
done