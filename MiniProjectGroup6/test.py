import pandas as pd
import numpy as np
import seaborn as sns
import matplotlib.pyplot as plt

# Load data from CSV file
df = pd.read_csv('phVsPotability.txt')

potable = df[df['Potability'] == 1]
not_potable = df[df['Potability'] == 0]

p_x = [0 - 0.05] * len(potable)
np_x = [1 + 0.05] * len(not_potable)

offset = 0.1  # Adjust this value as needed

plt.figure(figsize=(10, 6))

# For non-potable points, we subtract the offset
plt.scatter(df[df['Potability'] == 0].index - offset, df[df['Potability'] == 0]['ph'],
            alpha=0.6, color='red', label='Not Potable')

plt.scatter(df[df['Potability'] == 1].index + offset, df[df['Potability'] == 1]['ph'],
            alpha=0.6, color='blue', label='Potable')


# plt.scatter(df['Potability'], df['ph'], color='blue', label='Drinkable')
plt.figure(figsize=(10, 6))
plt.scatter(df['Potability'], df['ph'], alpha=0.6)
plt.title('pH vs Potability')
plt.xlabel('Potability')
plt.ylabel('pH Level')
plt.xticks([0, 1], ['Not Potable', 'Potable'])
plt.show()
