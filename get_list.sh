#Unfortunately, it's rather difficult to automate this step,  so I'm not going to.

wget  https://en.wiktionary.org/wiki/Category:English_vulgarities
cat Category\:English_vulgarities | grep '<li><a href='
nano Category\:English_vulgarities
mv Category\:English_vulgarities english_swears
nano english_swears
wc -l english_swears # Should be about 220
nano english_swears # Manually clean up 
cat english_swears | sed 's/<li><a href="\/wiki\///' > english_swears_semi_clean
cat english_swears_semi_clean| sed 's/".*//' > english_swears_mostly_clean
cat english_swears_mostly_clean | sed 's/<ul>//' > english_swears_clean
