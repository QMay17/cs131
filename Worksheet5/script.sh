# Loop through categories and count entries
categories=("Music" "Entertainment" "Gaming" "Comedy")
for category in "${categories[@]}"; do
    grep "United States" Global\ YouTube\ Statistics.csv | grep "$category" >> "United States/$category.txt"
done

# Count the number of entries in each category file and store in ws5.txt
wc -l "United States/Music.txt" >> ws5.txt
wc -l "United States/Entertainment.txt" >> ws5.txt
wc -l "United States/Gaming.txt" >> ws5.txt
wc -l "United States/Comedy.txt" >> ws5.txt
