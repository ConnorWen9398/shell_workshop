wget https://witestlab.poly.edu/bikes/201601-citibike-tripdata.zip
unzip 201601-citibike-tripdata.zip
awk -F "\"*,\"*" '{print $5}' 201601-citibike-tripdata.csv >>data.txt
sort -g data.txt > data2.txt
uniq -c data2.txt > data3.txt
sort -g data3.txt > data4.txt
tail data4.txt

