#!/usr/bin/bash

cd ../San-Diego
echo $PWD

mkdir "${PWD}Completed"

for f in *.zip
do
    echo $f
    year="${f%.*}"
    echo $year
    unzip $f
    mv CollisionRecords.txt "${year}CollisionRecords.txt"
    mv PartyRecords.txt "${year}PartyRecords.txt"
    mv VictimRecords.txt "${year}VictimRecords.txt"
    rm RawData_template.docx
    mv "${year}.zip" "/${PWD}Completed"
done

# for f in *.txt
# do
#     echo $f
#     year="${f%.*}"
#     echo $year
#     mv $f "${year}PartyRecords.txt"
# done