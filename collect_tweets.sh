# USAGE: in the Karora command line, type 'bash collect_tweets.sh'

# Friesland

# Extracts tweets written from 17:00 to 17:59 from every day of February 2021
zless /net/corpora/twitter2/Tweets/2021/02/*\:17.out.gz |\

# Extracts the tweets' texts and locations
/net/corpora/twitter2/tools/tweet2tab text user.location |\

# Selects only the tweets that end with 'tab, not a tab zero or more times,
# the string 'friesland', 'Friesland', 'fryslân' or 'Fryslân', not a tab zero or more times'
# These are the tweets that have one of these strings in their location.
grep -E '\t[^\t]*[fF]riesland[^\t]*$|\t[^\t]*[fF]ryslân[^\t]*$' |\

# Excludes the tweets that have 'West-Friesland', 'West Friesland' or 'westfriesland' in their location.
# In all cases, the W and F might be both uppercase and lowercase.
grep -v -E '\t[^\t]*[wW]est[- ]*[fF]riesland[^\t]*$' |\

# Excludes the tweets that start with 'RT '. These are retweets.
grep -v -E '^RT ' |\

# To delete the locations from the tweets, replaces any last occurrence of 'text1, tab, text2' with only 'text1'
# The processed tweets are saved to the text file Friesland.txt
sed 's/\(.*\)\t[^\t]*/\1/' > Friesland.txt


# Noord-Holland

# Extracts tweets written from 17:00 to 17:59 from every day of February 2021
zless /net/corpora/twitter2/Tweets/2021/02/*\:17.out.gz |\

# Extracts the tweets' texts and locations
/net/corpora/twitter2/tools/tweet2tab text user.location |\

# Selects only the tweets that end with 'tab, not a tab zero or more times,
# the string 'Noord-Holland', 'Noord Holland' or 'noordholland', not a tab zero or more times'
# In all cases, the N and H might be both uppercase and lowercase.
# These are the tweets that have one of these strings in their location.
grep -E '\t[^\t]*[nN]oord[- ]*[hH]olland[^\t]*$' |\

# Excludes the tweets that start with 'RT '. These are retweets.
grep -v -E '^RT ' |\

# To delete the locations from the tweets, replaces any last occurrence of 'text1, tab, text2' with only 'text1'
# The processed tweets are saved to the text file Noord-Holland.txt
sed 's/\(.*\)\t[^\t]*/\1/' > Noord-Holland.txt
