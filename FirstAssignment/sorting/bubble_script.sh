gcc bubblesort.c -o bubble
for ((n=0;n<100;n++))
do
    python gen.py > data.in
    ./bubble < data.in
done