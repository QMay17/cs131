#Count the number of cities in the country with non-portable water
awk -F';' '$NF == 0 { country_count[$3]++ } END { for (country in country_count) print country "," country_count[country] }' water_quality.csv | sort > NotPotable.txt


#Count the number of cities in the country
awk -F';' '{ city_count[$3]++ } END { for (country in city_count) print country "," city_count[country] }' water_quality.csv | sort > NumOfCities.txt


#Calculating the ratio of the of cities with non-portable water and the number of cities in each country
# Join the data from both files using the country name as the key, then calculate the ratio
join -t',' NumOfCities.txt NotPotable.txt | awk -F',' '{ ratio = $3 / $2; print $1 "," ratio }' | sort -t ',' -k2n > NonPotabilityRatio.txt
#Note: The smaller the number, the better the water quality of the country.

