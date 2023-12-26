import pandas as pd
import seaborn as sns
data1=pd.read_excel("difference spectra.xlsx")
sns.displot(data1,x="Wavelength (micron)",bins=10)
sns.displot(data1,x="CM Vacuum - Ambient",bins=10)
sns.displot(data1,x="CI Vacuum - Ambient",bins=10)