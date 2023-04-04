import pandas as pd

iana_url = 'https://data.iana.org/TLD/tlds-alpha-by-domain.txt' 

tlds = pd.read_csv(iana_url, header=None, skiprows=1)

tlds.columns = ['TLD']

tlds.to_csv('seeds/top_level_domains.csv', index=False)