gcc quicksort.c -o quick
for ((n=0;n<100;n++))
do
    python gen.py > data.in
    ./quick < data.in
done