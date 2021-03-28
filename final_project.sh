# USAGE: in the Karora command line, type 'bash final_project.sh'

# uses collect_tweets.sh to extract the data necessary for count_occurrences.py
bash collect_tweets.sh

# counts the occurrences of the accent circumflex in the data provided by collect_tweets.sh
python3 count_occurrences.py
