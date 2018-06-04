# [AWK](https://en.wikipedia.org/wiki/AWK) examples

The `2010_Census_Populations_by_Zip_Code.csv` file used in the examples was downloaded from https://data.lacity.org/api/views/nxs9-385f/rows.csv

----

**Print the total population (second) column**

    awk -F, '{print $2}' 2010_Census_Populations_by_Zip_Code.csv

> `-F,` tells awk to use comma as column separator

----

**Sum values of a column**

    awk -F, -f total_pop.awk 2010_Census_Populations_by_Zip_Code.csv

> `-f file.awk` tells awk which program to execute

----

**Computing some stats**

     tail -n +2 2010_Census_Populations_by_Zip_Code.csv | awk -F, -f stats.awk

> `tail -n +2` to skip the first line, which is the header and would affect the results.

----

**Every 2nd line**

    awk -F, 'NR%2 == 0 {print $0}' 2010_Census_Populations_by_Zip_Code.csv

----

**Zip codes with population > 100000**

    awk -F, '$2 > 100000 {print $1}' 2010_Census_Populations_by_Zip_Code.csv

----

**Zip codes with population > 10,000 and average household size > 4**

    awk -F, '$2 > 10000 && $7 > 4 {print $1}' 2010_Census_Populations_by_Zip_Code.csv

> `&&` and `||` stand for logical _and_ and _or_

----

Additional resources:

* [The_AWK_Programming_Language.pdf](https://ia802309.us.archive.org/25/items/pdfy-MgN0H1joIoDVoIC7/The_AWK_Programming_Language.pdf)
* [The GNU Awk User's Guide](https://web.archive.org/web/20090410021611/http://www.gnu.org:80/software/gawk/manual/gawk.html)