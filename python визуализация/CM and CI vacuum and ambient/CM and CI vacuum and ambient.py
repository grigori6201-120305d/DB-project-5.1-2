import pandas as pd
import seaborn as sns
data1=pd.read_excel("CM and CI vacuum and ambient.xlsx")
sns.displot(data1,x="Wavelength (micron)",bins=10)
sns.displot(data1,x="CM Ambient",bins=10)
sns.displot(data1,x="CM Vacuum",bins=10)
sns.displot(data1,x="CI Ambient",bins=10)
sns.displot(data1,x="CI Vacuum",bins=10)
