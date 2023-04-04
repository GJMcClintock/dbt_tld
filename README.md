## dbt_tld
 A self-updating dbt library that will maintain a list of current IANA/ICANN recognized top level domains. This was made in an effort to make filtering impossible email addresses easier.

 The library contains a seed file (which will be updated every time you run `dbt deps`). It also contains a `parse_tld` macro for separating the TLD from the rest of the string (useful for doing an inner join to remove bad emails or creating a column to compare).

 After installation, creation of the seed file will allow you to reference the created model in your project.

 Maintenance of the list is performed via GitHub action sourcing the official [IANA list](https://data.iana.org/TLD/tlds-alpha-by-domain.txt).

 # Seed Location
 You must use the following variables to set the location of the seed file in your `dbt_project.yml` file:

 ```
    tld_database:
    tld_schema:
 ```