import pandas as pd
import seaborn as sns
data1=pd.read_excel("irradiation.xlsx")
sns.displot(data1,x="Wavelength (micron)",col="Laser",bins=10)
sns.displot(data1,x="fresh",col="Laser",bins=10)
sns.displot(data1,x="1 pulse",col="Laser",bins=10)
sns.displot(data1,x="2 pulse",col="Laser",bins=10)
sns.displot(data1,x="3 pulses",col="Laser",bins=10)
sns.displot(data1,x="5 pulses",col="Laser",bins=10)








