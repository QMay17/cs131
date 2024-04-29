Extracting Organic Cargon,Trihalomethanes and Potability from the file 
cut -d ',' -f 7,8,10 water_potability.csv | sort -t ',' -k 3 -r > OrganicCarbonTrihalomethanesVsPotability.txt 


Extracting Solid and Conductivity information from the file. 
cut -d ',' -f 3,6 water_potability.csv | sort -r > solidVsConductivity.txt
