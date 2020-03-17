#Unfortunately, it's rather difficult to automate this step,  so I'm not going to.

wget  https://en.wiktionary.org/wiki/Category:English_vulgarities
cat Category\:English_swear_words | grep 'a href="/wiki' > references
# Manually remove anything which is not a category, then proceed to run the following:
cat references | sed -e 's/<[^>]*>//g' > all_categories
# ^ Removes all HTML tags.
cat all_categories| sed 's/^$*/https:\/\/en\.wiktionary\.org\/wiki\//' > category_links
# ^ Converts the categories to links, still needs manual intervention.
