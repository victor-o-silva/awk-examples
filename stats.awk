{ s += $2; h += $6;}
END {print "Total population:", s, "\nTotal households:", h, "\nAverage household size:", s/h, "\nAverage population per zip code:", s/NR}